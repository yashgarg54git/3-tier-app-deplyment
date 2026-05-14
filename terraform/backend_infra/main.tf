provider "azurerm" {
    features {
      
    }
    subscription_id = "9975b441-892c-4385-a4a6-e6201bf8df1e"
  
}

resource "azurerm_resource_group" "rg" {
    name = "backend-rg"
    location = "centralindia"

  
}

resource "azurerm_storage_account" "stg" {
    name                     = "backendstgggyash"
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
  
}

resource "azurerm_storage_container" "container" {
    name                  = "backend-container"
    storage_account_id  = azurerm_storage_account.stg.id
    container_access_type = "private"
  
}