resource "kubernetes_cluster_role" "role" {
  provider = var.cluster_role_provider

  metadata {
    name = var.service_name

    labels = {
      app = var.service_name
    }
  }

  rule {

        dynamic "rule_for" {
        for_each = var.rules
        content {
          verbs = rules.value["verbs"]
          api_groups = rules.value["api_groups"]
          resources = rules.value["resources"]
                }
        }
  }

}
