output "kube_configs" {
  value       = { for env, mod in module.aks : env => mod.kube_config }
  description = "Kubeconfigs for each environment"
  sensitive   = true
}
