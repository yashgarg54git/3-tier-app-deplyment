output "acr_id" {
    value = { for acr in azurerm_container_registry.acr : acr.name => acr.id }
  
}