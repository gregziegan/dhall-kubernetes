{ activeDeadlineSeconds = None Integer
, backoffLimit = None Integer
, backoffLimitPerIndex = None Integer
, completionMode = None Text
, completions = None Integer
, manualSelector = None Bool
, maxFailedIndexes = None Integer
, parallelism = None Integer
, podFailurePolicy = None ./../types/io.k8s.api.batch.v1.PodFailurePolicy.dhall
, podReplacementPolicy = None Text
, selector =
    None ./../types/io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector.dhall
, suspend = None Bool
, ttlSecondsAfterFinished = None Integer
}
