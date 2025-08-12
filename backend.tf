terraform {
    backend "azurerm" {
    resource_group_name = "datafactory"
    storage_account_name = "testingteam12"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    }
}
