{ conditions =
    None
      ( List
          ./../types/io.k8s.api.autoscaling.v2.HorizontalPodAutoscalerCondition.dhall
      )
, currentMetrics =
    None (List ./../types/io.k8s.api.autoscaling.v2.MetricStatus.dhall)
, currentReplicas = None Integer
, lastScaleTime =
    None ./../types/io.k8s.apimachinery.pkg.apis.meta.v1.Time.dhall
, observedGeneration = None Integer
}
