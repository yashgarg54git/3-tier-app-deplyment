rgs = {
  rg1 = {
    resource_group_name = "app-rg-1"
    location = "Central India"
  }
}

vnets = {
  vnet1 = {
    vnet_name = "app-vnet-1"
    location = "Central India"
    resource_group_name = "app-rg-1"
    address_space = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    subnet_name = "app-subnet-1"
    resource_group_name = "app-rg-1"
    vnet_name = "app-vnet-1"
    address_prefixes = ["10.0.1.0/24"]
  }
}

public_ips = {
  pip1 = {
    pip_name = "pip-1"
    resource_group_name = "app-rg-1"
    location = "Central India"
    sku = "Standard"
    allocation_method = "Static"
  }
}

nsgs = {
  nsg1 = {
    name = "app-nsg-1"
    location = "Central India"
    resource_group_name = "app-rg-1"
  }
}

nics = {
  nic1 = {
    nic_name = "app-nic-1"
    location = "Central India"
    resource_group_name = "app-rg-1"
    subnet_key = "subnet1"
    public_ip_key = "pip1"
  }
}

nsgasso = {
  assoc1 = {
    nic_key = "nic1"
    nsg_key = "nsg1"
  }
}

vms = {
  vm1 = {
    vm_name = "app-vm-1"
    location = "Central India"
    resource_group_name = "app-rg-1"
    size = "Standard_D2s_v3"
    admin_username = "appuseryash"
    nic_key = "nic1"
  }
}

acrs = {
  acr1 = {
    acr_name = "yashappacr1"
    resource_group_name = "app-rg-1"
    location = "Central India"
    sku = "Standard"
    admin_enabled = true
    
  }
}