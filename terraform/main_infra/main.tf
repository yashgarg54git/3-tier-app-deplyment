module "rgm" {
    source = "./modules/01-resource_group"
    rgs = var.rgs
  
}

module "vnetm" {
    source = "./modules/02-virtual_network"
    vnets = var.vnets
    depends_on = [ module.rgm ]
  
}

module "subnetm" {
    source = "./modules/03-subnet"
    subnets = var.subnets
    depends_on = [ module.vnetm ]
  
}

module "pipm" {
    source = "./modules/04-public_ip"
    public_ips = var.public_ips
    depends_on = [ module.subnetm ]
  
}

module "nsgm" {
    source = "./modules/05-NSG"
    nsgs = var.nsgs
    depends_on = [ module.rgm ]
  
}

module "nicm" {
    source = "./modules/06-NIC"
    nics = var.nics
    subnet_ids = module.subnetm.subnet_ids
    public_ip_ids = module.pipm.public_ip_ids
    depends_on = [ module.rgm, module.pipm ]
  
}

module "nsgasm" {
    source = "./modules/07-nsg-assoc"
    nsgasso = var.nsgasso
    nic_ids = module.nicm.nic_ids
    nsg_ids = module.nsgm.nsg_ids
    depends_on = [ module.nicm, module.nsgm ]

    
  
}

module "vmm" {
    source = "./modules/08-VM"
    vms = var.vms
    nic_ids = module.nicm.nic_ids
    vm_admin_password = var.vm_admin_password
    depends_on = [ module.nicm ]
  
}

module "acrm" {
    source = "./modules/09-ACR"
    acrs = var.acrs
    depends_on = [ module.rgm ]
  
}