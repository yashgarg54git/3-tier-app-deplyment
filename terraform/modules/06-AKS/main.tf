resource "azurerm_kubernetes_cluster" "aks" {
    for_each = var.aks
    name                = each.value.aks_name
    resource_group_name = each.value.resource_group_name
    location            = each.value.location
    dns_prefix         = each.value.dns_prefix
    default_node_pool {
        name       = each.value.node_pool_name
        node_count = each.value.node_count
        vm_size    = each.value.vm_size 
        vnet_subnet_id = var.subnet_ids[each.value.subnet_key]
    }
    identity {
        type = "SystemAssigned"
    }

    network_profile {
      network_plugin = "azure"
      load_balancer_sku = "standard"
       service_cidr   = "172.16.0.0/16"
  dns_service_ip = "172.16.0.10"

    }

  
}