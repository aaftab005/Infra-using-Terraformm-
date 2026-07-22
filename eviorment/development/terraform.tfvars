
rg = {
    dev_rg = {
      location = "eastus"
    }
    prod_rg = {
      location = "westus"
    }
}

sanew = {
    devstorage2941 = {
    rgkey = "dev_rg"
    }
    prodstorage2941 = {
      rgkey = "prod_rg"
    }
}


vnet = {
    vnet1 = {
        name = "devvnet"
        rgkey = "dev_rg"
        lockey = "East US"
        adrsspc = ["10.1.0.0/16"]
    }
    vnet2 = {
        name = "prodvnet"
        rgkey = "prod_rg"
        lockey = "West Europe"
        adrsspc = ["10.0.0.0/16"]
    }
}

allsub = {
  subnet1 = {
    name = "subnet1"
    rgkey = "dev_rg"
    vnetkey = "vnet1"
    adrsspc = ["10.1.2.0/24"]
  }
   subnet2 = {
    name = "subnet2"
    rgkey = "prod_rg"
    vnetkey = "vnet2"
    adrsspc = ["10.1.0.0/24"]
  }
}

vm = {
    vm1 = {
        name = "devvm"
        rgkey = "dev_rg"
        nickey = "nic1"
    }
    vm2 = {
        name = "prodvm"
        rgkey = "prod_rg"
        nickey = "nic2"
    }
}

nic = {
    nic1 = {
        name = "devnic"
        nickey = "dev_rg"
        subnetkey  = "subnet1"        
    }
    nic2 = {
        name = "prodnic"
        nickey = "prod_rg"
        subnetkey  = "subnet2"      
    }
}