module "aks" {
  source              = "../../modules/aks"
  environment         = "test"
  resource_group_name = var.resource_group_name
  location            = var.location
  kubernetes_version  = var.kubernetes_version
  node_count          = var.node_count
}
