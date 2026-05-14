variable "kvs" {
    type = map(object({
        kv_name             = string
        resource_group_name  = string
        location             = string
        sku_name            = string
    }))
  
}