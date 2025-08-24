resource "azurerm_resource_group" "rgPractice1" {
  name     = var.rg_name
  location = var.location
}

variable "rg_name" {}
variable "location" {}

