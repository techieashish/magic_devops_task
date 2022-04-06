variable "service_acount_provider" {
  type = "string"
  description = "provider for service account"
}

variable "automount_service_account_token" {
  type = bool
  description = ""
  default = false
}

variable "service_account_name" {
  type = "string"
  description = ""
}

variable "namespace" {
  type = "string"
  description = ""
}