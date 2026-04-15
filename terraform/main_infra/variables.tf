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
    subnet_name = string
    resource_group_name = string
    vnet_name = string
    address_prefixes = list(string)
  }))
  
}

variable "public_ips" {
  type = map(object({
    pip_name = string
    resource_group_name = string
    location = string
    sku = string
    allocation_method = string
  }))
  
}

variable "nsgs" {
  type = map(object({
    name = string
    location = string
    resource_group_name = string
  }))
  
}

variable "nics" {
  type = map(object({
    nic_name = string
    location = string
    resource_group_name = string
    subnet_key = string
    public_ip_key = string
  }))
  
}

# variable "subnet_ids" {
#   type = map(string)
  
# }
# variable "public_ip_ids" {
#   type = map(string)
  
# }

variable "nsgasso" {
  type = map(object({
    nic_key = string
    nsg_key = string
  }))
  
}

# variable "nic_ids" {
#   type = map(string)
# }

# variable "nsg_ids" {
#   type = map(string)
# }

variable "vms" {
  type = map(object({
    vm_name = string
    location             = string
    resource_group_name  = string
    size                 = string
    admin_username       = string
    nic_key              = string
  }))
  
}

variable "vm_admin_password" {
  type = string
  sensitive = true
  
}

variable "acrs" {
  type = map(object({
    acr_name = string
    location = string
    resource_group_name = string
    sku = string
    admin_enabled = bool
  }))
  
}
