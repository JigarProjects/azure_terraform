output "kube_config" {
  value       = module.aks.kube_config
  description = "Kubeconfig for dev cluster"
  sensitive   = true
}
