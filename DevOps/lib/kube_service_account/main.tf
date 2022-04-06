resource "kubernetes_service_account" "service_account" {
  provider = var.service_acount_provider

  automount_service_account_token = var.automount_service_account_token

  metadata {
    name      = var.service_account_name
    namespace = var.namespace

    labels = {
      app = var.service_account_name
    }
  }
}