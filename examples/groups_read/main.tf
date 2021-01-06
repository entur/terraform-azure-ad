provider "azurerm" {
  features {}
}

module "azuread_groups" {
  source              = "../modules/groups_read"
  azuread_group_names = var.ad_group_names
}

output "groups_by_name" {
  value = module.azuread_groups.groups_by_name
}