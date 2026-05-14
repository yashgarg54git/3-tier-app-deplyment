data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
    for_each = var.kvs
    name                = each.value.kv_name
    resource_group_name = each.value.resource_group_name
    location            = each.value.location
    tenant_id           = data.azurerm_client_config.current.tenant_id
    sku_name            = each.value.sku_name
    purge_protection_enabled = false
    soft_delete_retention_days = 7
  
}