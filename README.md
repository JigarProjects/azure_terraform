# Azure Terraform AKS Environments

This repository contains Terraform configuration to deploy Azure Kubernetes Service (AKS) clusters for `dev`, `test` and `prod` environments. The reusable module under `modules/aks` provisions a resource group and cluster for any environment.

## Structure

- `main.tf` & `variables.tf` - sample root configuration that deploys all environments at once using a map variable.
- `terraform.tfvars` - sample values for the combined deployment.
- `envs/<env>` - folders to manage environments individually (`dev`, `test`, `prod`). Each contains its own `main.tf`, `variables.tf`, and `terraform.tfvars`.
- `modules/aks` - reusable module that creates a resource group and AKS cluster.

## Usage

### Deploy all environments at once

1. Ensure Terraform is installed and your Azure credentials are configured for the `azurerm` provider.
2. Edit `terraform.tfvars` in the repo root to match your desired settings.
3. Initialize and apply:

```bash
terraform init
terraform plan
terraform apply
```

The `kube_configs` output will contain the kubeconfig for each deployed cluster.

### Deploy a single environment

1. Change into one of the environment folders under `envs` (e.g. `cd envs/dev`).
2. Update the `terraform.tfvars` file in that folder if necessary.
3. Run Terraform commands in that directory:

```bash
terraform init
terraform plan
terraform apply
```

The `kube_config` output will contain the kubeconfig for that specific cluster.
