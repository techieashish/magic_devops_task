moved {
  from = kubernetes_service_account.state_metrics_local
  to = module.service_account.state_metrics_local
}

moved {
  from = kubernetes_cluster_role.state_metrics_local
  to = module.cluster_role.state_metrics_local
}

moved {
  from = kubernetes_deployment.state_metrics_local
  to = module.deployment.state_metrics_local
}
