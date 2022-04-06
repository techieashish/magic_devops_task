module "state_metrics_local" {
  source = "../../lib/kube_service_account/main.tf"
  service_acount_provider = kubernetes.local

  automount_service_account_token = false

  service_account_name  = "state-metrics"

  namespace = kubernetes_namespace.mon_local.metadata[0].name
}
