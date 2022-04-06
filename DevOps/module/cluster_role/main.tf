module "state_metrics_local" {
  source = "../../lib/kube_cluster_role/main.tf"
  cluster_role_provider = kubernetes.local
  service_name = state-metrics
  rules {

    "no_api_groups" = {
          verbs      = ["list", "watch"]
          api_groups = [""]
          resources = [
            "configmaps",
            "secrets",
            "nodes",
            "pods",
            "services",
            "resourcequotas",
            "replicationcontrollers",
            "limitranges",
            "persistentvolumeclaims",
            "persistentvolumes",
            "namespaces",
            "endpoints"
          ]
    }

    "extensions" = {
    verbs      = ["list", "watch"]
    api_groups = ["extensions"]
    resources  = ["daemonsets", "deployments", "replicasets", "ingresses"]
  }

    "apps" = {
    verbs      = ["list", "watch"]
    api_groups = ["apps"]
    resources  = ["statefulsets", "daemonsets", "deployments", "replicasets"]
  }
    "batch" = {
    verbs      = ["list", "watch"]
    api_groups = ["batch"]
    resources  = ["cronjobs", "jobs"]
  }

    "autoscaling" = {
    verbs      = ["list", "watch"]
    api_groups = ["autoscaling"]
    resources  = ["horizontalpodautoscalers"]
  }

    "authentication" = {
    verbs      = ["create"]
    api_groups = ["authentication.k8s.io"]
    resources  = ["tokenreviews"]
  }
    "authorization" = {
    verbs      = ["create"]
    api_groups = ["authorization.k8s.io"]
    resources  = ["subjectaccessreviews"]
  }

    "policy" = {
    verbs      = ["list", "watch"]
    api_groups = ["policy"]
    resources  = ["poddisruptionbudgets"]
  }

    "certificates" = {
    verbs      = ["list", "watch"]
    api_groups = ["certificates.k8s.io"]
    resources  = ["certificatesigningrequests"]
  }


    "storage" = {
    verbs      = ["list", "watch"]
    api_groups = ["storage.k8s.io"]
    resources  = ["storageclasses", "volumeattachments"]
  }

    "admissionregistration" = {
    verbs      = ["list", "watch"]
    api_groups = ["admissionregistration.k8s.io"]
    resources  = ["mutatingwebhookconfigurations", "validatingwebhookconfigurations"]
  }

    "networking" = {
    verbs      = ["list", "watch"]
    api_groups = ["networking.k8s.io"]
    resources  = ["networkpolicies", "ingresses"]
  }

    "coordination" = {
    verbs      = ["list", "watch"]
    api_groups = ["coordination.k8s.io"]
    resources  = ["leases"]
  }

  }


}
