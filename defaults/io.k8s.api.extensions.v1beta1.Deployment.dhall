{ apiVersion =
    "extensions/v1beta1"
, kind =
    "Deployment"
, metadata =
    ./io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall
, spec =
    None ./io.k8s.api.extensions.v1beta1.DeploymentSpec.dhall
, status =
    None ./io.k8s.api.extensions.v1beta1.DeploymentStatus.dhall
}