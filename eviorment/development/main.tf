module "rg" {
  source = "../../Modules/RG"
  rg     = var.rg
}

module "sa" {
  source = "../../Modules/storage account_data"
  sanew  = var.sanew
  sacall = module.rg.rg_details
}

module "vnet" {
  source = "../../Modules/vnet"
  vnet   = var.vnet
  #  vnetcall = module.rg.rg_details
  rgcall = module.rg.rg_details
}

module "subnet" {
  source   = "../../Modules/subnet"
  allsub   = var.allsub
  rgcall   = module.rg.rg_details
  vnetcall = module.vnet.vnet_details

}

module "nic" {
  source     = "../../Modules/nic"
  nic        = var.nic
  rgcall     = module.rg.rg_details
  subnetcall = module.subnet.subnet_details
}

module "VM" {
  source  = "../../Modules/VM"
  vm      = var.vm
  ssh_public_key = var.ssh_public_key
  rgcall  = module.rg.rg_details
  niccall = module.nic.nic_details
}