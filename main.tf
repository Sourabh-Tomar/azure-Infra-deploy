resource "azurerm_resource_group" "RG" {
    name = "RG011"
    location = "East US"
}

resource "azurerm_storage_account" "strg" {
    name = "strg26111"
    resource_group_name = azurerm_resource_group.RG.name
    location = azurerm_resource_group.RG.location
    account_tier = "Standard"
    account_replication_type = "LRS"
    tags = {
        environment = var.environment
    }
}