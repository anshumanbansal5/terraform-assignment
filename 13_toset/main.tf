provider "azurerm" {
  features {}

  subscription_id = "bccb0d73-526c-4bc3-a5dd-0de2a85fe799"
  client_id       = "f238f9c6-ca1f-407a-827d-1c59d401f966"
  client_secret   = "6gk8Q~Po6V9G3irUz~Ltv05uJE2ID9UKL-Xgkc1A"
  tenant_id       = "ba16d5e3-a414-4a34-b06b-dfc21e7dfb88"
}

variable "groups" {
  type = list
  default = ["dev","prod"]
}

resource "azurerm_resource_group" "rg" {
  for_each = toset(var.groups)
  name     = each.value
  location = "East US"
}