environments = {
  dev = {
    resource_group_name = "dev-rg"
    location            = "eastus"
    kubernetes_version  = "1.27.3"
    node_count          = 1
  }
  test = {
    resource_group_name = "test-rg"
    location            = "eastus"
    kubernetes_version  = "1.27.3"
    node_count          = 1
  }
  prod = {
    resource_group_name = "prod-rg"
    location            = "eastus"
    kubernetes_version  = "1.27.3"
    node_count          = 3
  }
}
