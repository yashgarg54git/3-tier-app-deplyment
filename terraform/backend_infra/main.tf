provider "azurerm" {
    features {
      
    }
    subscription_id = "6301dfd0-6b99-4375-a25b-e25cd821ec04"
  
}

resource "azurerm_resource_group" "rg" {
    name = "backend-rg"
    location = "Central India"
  
}

resource "azurerm_storage_account" "stg" {
    name = "backendstgyash"
    location = "Central India"
    resource_group_name = azurerm_resource_group.rg.name
    account_tier = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_storage_container" "ctr" {
    name = "backend-container"
    storage_account_id = azurerm_storage_account.stg.id
    container_access_type = "private"
  
}