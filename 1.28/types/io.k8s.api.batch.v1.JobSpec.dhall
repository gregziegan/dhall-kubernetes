{ template : ./io.k8s.api.core.v1.PodTemplateSpec.dhall
, activeDeadlineSeconds : Optional Integer
, backoffLimit : Optional Integer
, backoffLimitPerIndex : Optional Integer
, completionMode : Optional Text
, completions : Optional Integer
, manualSelector : Optional Bool
, maxFailedIndexes : Optional Integer
, parallelism : Optional Integer
, podFailurePolicy : Optional ./io.k8s.api.batch.v1.PodFailurePolicy.dhall
, podReplacementPolicy : Optional Text
, selector : Optional ./io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector.dhall
, suspend : Optional Bool
, ttlSecondsAfterFinished : Optional Integer
}
