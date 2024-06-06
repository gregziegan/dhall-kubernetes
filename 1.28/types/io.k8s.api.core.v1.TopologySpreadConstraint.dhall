{ maxSkew : Integer
, topologyKey : Text
, whenUnsatisfiable : Text
, labelSelector :
    Optional ./io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector.dhall
, matchLabelKeys : Optional (List Text)
, minDomains : Optional Integer
, nodeAffinityPolicy : Optional Text
, nodeTaintsPolicy : Optional Text
}
