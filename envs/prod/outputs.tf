output "kube_config" {
  value       = module.aks.kube_config
  description = "Kubeconfig for prod cluster"
  sensitive   = true
}
