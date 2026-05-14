variable "acrs" {
    type = map(object({
        acr_name             = string
        resource_group_name  = string
        location             = string
        sku                  = string
        admin_enabled        = bool
    }))
  
}