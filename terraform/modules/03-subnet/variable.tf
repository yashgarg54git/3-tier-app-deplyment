variable "subnets" {
    type = map(object({
        snet_name           = string
        resource_group_name = string
        vnet_name           = string
        address_prefixes    = list(string)
    }))

  
}