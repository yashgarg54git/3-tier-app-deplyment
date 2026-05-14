module "rgm" {
    source = "../../modules/01-resource_group"
    rgs = var.rgs
  
}

module "vnetm" {
    source = "../../modules/02-virtual_network"
    vnets = var.vnets
    depends_on = [ module.rgm ]
  
}

module "subnetm" {
    source = "../../modules/03-subnet"
    subnets = var.subnets
    depends_on = [ module.vnetm ]
  
}

module "acrm" {
    source = "../../modules/04-ACR"
    acrs = var.acrs
    depends_on = [ module.rgm ]
  
}

module "kvm" {
    source = "../../modules/05-key_vault"
    kvs = var.kvs
    depends_on = [ module.rgm ]
  
}

module "aksm" {
    source = "../../modules/06-AKS"
    aks = var.aks
    subnet_ids = module.subnetm.subnet_ids
    depends_on = [ module.rgm, module.subnetm ]

  
}
