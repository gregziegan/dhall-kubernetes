let Prelude =
      ../Prelude.dhall sha256:771c7131fc87e13eb18f770a27c59f9418879f7e230ba2a50e46f4461f43ec69

let map = Prelude.List.map

let kv = Prelude.JSON.keyText

let kubernetes =
      ../package.dhall sha256:ce1e73deebf8c4eb513bfc736adfd924fe696ffee486f6f4bd81ed281bbf0f2a

let Service = { name : Text, host : Text, version : Text }

let services = [ { name = "foo", host = "foo.example.com", version = "2.3" } ]

let makeTLS
    : Service → kubernetes.IngressTLS.Type
    =   λ(service : Service)
      → { hosts = [ service.host ]
        , secretName = Some "${service.name}-certificate"
        }

let makeRule
    : Service → kubernetes.IngressRule.Type
    =   λ(service : Service)
      → { host = Some service.host
        , http = Some
            { paths =
              [ { backend =
                    { serviceName = service.name
                    , servicePort = kubernetes.IntOrString.Int 80
                    }
                , path = None Text
                }
              ]
            }
        }

let mkIngress
    : List Service → kubernetes.Ingress.Type
    =   λ(inputServices : List Service)
      → let annotations =
              [ kv "kubernetes.io/ingress.class" "nginx"
              , kv "kubernetes.io/ingress.allow-http" "false"
              ]

        let defaultService =
              { name = "default"
              , host = "default.example.com"
              , version = " 1.0"
              }

        let ingressServices = inputServices # [ defaultService ]

        let spec =
              kubernetes.IngressSpec::{
              , tls =
                  map Service kubernetes.IngressTLS.Type makeTLS ingressServices
              , rules =
                  map
                    Service
                    kubernetes.IngressRule.Type
                    makeRule
                    ingressServices
              }

        in  kubernetes.Ingress::{
            , metadata = kubernetes.ObjectMeta::{
              , name = "nginx"
              , annotations = annotations
              }
            , spec = Some spec
            }

in  mkIngress services