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

variable "subnet_ids" {
    type = map(string)
  
}