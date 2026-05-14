variable "rgs" {
    type = map(object({
      resource_group_name = string
      location = string
    }))
  
}

variable "vnets" {
  type = map(object({
    vnet_name = string
    location = string
    resource_group_name = string
    address_space = list(string)
  }))

  
}

variable "subnets" {
  type = map(object({
    snet_name = string
    resource_group_name = string
    vnet_name = string
    address_prefixes = list(string)
  }))
  
}

variable "acrs" {
    type = map(object({
        acr_name             = string
        resource_group_name  = string
        location             = string
        sku                  = string
        admin_enabled        = bool
    }))
  
}

variable "kvs" {
    type = map(object({
        kv_name             = string
        resource_group_name  = string
        location             = string
        sku_name            = string
    }))
  
}

variable "aks" {
    type = map(object({
        aks_name             = string
        resource_group_name  = string
        location             = string
        dns_prefix          = string
        node_pool_name      = string
        node_count          = number
        vm_size             = string
        subnet_key          = string
    }))
  
}




