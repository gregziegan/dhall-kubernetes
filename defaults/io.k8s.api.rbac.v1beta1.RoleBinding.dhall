{ apiVersion =
    "rbac.authorization.k8s.io/v1beta1"
, kind =
    "RoleBinding"
, metadata =
    ./io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall
, roleRef =
    ./io.k8s.api.rbac.v1beta1.RoleRef.dhall
, subjects =
    [] : List ./io.k8s.api.rbac.v1beta1.Subject.dhall
}