{ apiVersion =
    "extensions/v1beta1"
, kind =
    "ReplicaSetList"
, items =
    [] : List ./io.k8s.api.extensions.v1beta1.ReplicaSet.dhall
, metadata =
    ./io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall
}