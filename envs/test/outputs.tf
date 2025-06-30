output "kube_config" {
  value       = module.aks.kube_config
  description = "Kubeconfig for test cluster"
  sensitive   = true
}
