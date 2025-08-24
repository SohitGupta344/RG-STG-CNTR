terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e8e67e49-af5a-4a37-abc9-4599917aee83"
}

module "RG" {
  source    = "../childmodule/RG"
  rg_name   = "rg-practice1"
  location  = "East US"
}

module "stg_name" {
  source    = "../childmodule"
  stg_name  = "stgpractice1"
  rg_name   = module.RG.rg_name     
  location  = module.RG.location
}

module "cntr" {
  source         = "../childmodule/CNTR"
  container_name = "container1"
  storage_account_id = module.stg_name.id
}

module "cntr" {
  source         = "../childmodule/CNTR"
  container_name = "container2"
  storage_account_id = module.stg_name.id
}