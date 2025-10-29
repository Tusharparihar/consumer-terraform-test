variable "azure_region" {
  default = "eastus"
}

module "azure_region" {
  source       = "git::https://github.com/YOUR-USERNAME/terraform-azurerm-regions-test.git?ref=v1.3.0"
  azure_region = var.azure_region
}

output "region" {
  value = module.azure_region.region
}
