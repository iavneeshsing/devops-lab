resource "azurerm_resource_group" "rg" {
  name     = "rg-devops-lab"
  location = var.location
  tags     = local.common_tags
}