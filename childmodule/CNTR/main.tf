resource "azurerm_storage_container" "Practice3" {
  name                  = var.container_name
  storage_account_id    = var.storage_account_id
  container_access_type = "private"
}

variable "container_name" {}
variable "storage_account_id" {}