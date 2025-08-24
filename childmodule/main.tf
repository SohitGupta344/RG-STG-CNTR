resource "azurerm_storage_account" "stgPractice2" {
  name                     = var.stg_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

variable "stg_name" {}
variable "rg_name" {}
variable "location" {}

