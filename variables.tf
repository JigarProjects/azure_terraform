variable "environments" {
  type = map(object({
    resource_group_name = string
    location            = string
    kubernetes_version  = string
    node_count          = number
  }))
  description = "Environment specific AKS settings"
}
