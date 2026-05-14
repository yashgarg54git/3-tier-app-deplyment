rgs = {

  y-ydev-rg = {
    resource_group_name = "ydev-rg"
    location            = "westus2"
  }

}

vnets = {

  ydev-vnet = {
    vnet_name           = "ydev-vnet"
    location            = "westus2"
    resource_group_name = "ydev-rg"
    address_space       = ["10.0.0.0/16"]
  }

}

subnets = {

  aks-subnet = {
    snet_name           = "aks-subnet"
    resource_group_name = "ydev-rg"
    vnet_name           = "ydev-vnet"
    address_prefixes    = ["10.0.1.0/24"]
  }

}

acrs = {

  ydevacr = {
    acr_name            = "ydevacr12345"
    resource_group_name = "ydev-rg"
    location            = "westus2"
    sku                 = "Basic"
    admin_enabled       = true
  }

}


kvs = {

  ydevkv = {
    kv_name             = "ydevkv12345"
    resource_group_name = "ydev-rg"
    location            = "westus2"
    sku_name            = "standard"
  }

}

aks = {

  ydevaks = {

    aks_name            = "ydev-aks"
    resource_group_name = "ydev-rg"
    location            = "westus2"

    dns_prefix          = "ydevaks"

    node_pool_name      = "default"
    node_count          = 1
    vm_size             = "standard_b2als_v2"

    subnet_key          = "aks-subnet"

  }

}