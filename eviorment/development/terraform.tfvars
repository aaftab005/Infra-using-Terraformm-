rg = {
  "rg-dev"  = { location = "East US" }
  "rg-prod" = { location = "West Europe" }
}

sanew = {
  "devstorage12345" = {
    "rgkey" = "rg-dev"
  }

  "prodstorage12345" = {
    "rgkey" = "rg-prod"
  }
}

vnet = {
  vnet1 = {
    name    = "prodvnet"
    rgkey   = "rg-dev"
    lockey  = "East US"
    adrsspc = ["10.1.0.0/16"]
  }
  vnet2 = {
    name    = "prodvnet"
    rgkey   = "rg-prod"
    lockey  = "West Europe"
    adrsspc = ["10.0.0.0/16"]
  }
}

allsub = {
  sub1 = {
    name    = "prodsub"
    rgkey   = "rg-prod"
    vnetkey = "vnet1"
    adrspre = ["10.1.1.0/24"]
  }
  sub2 = {
    name    = "devsub"
    rgkey   = "rg-dev"
    vnetkey = "vnet2"
    adrspre = ["10.0.1.0/24"]
  }
}

nic = {
  nic1 = {
    name = "prodnic"
    nickey = "rg-prod"
    subnetkey = "sub1"
  }
  nic2 = {
    name = "devnic"
    nickey = "rg-dev"
    subnetkey = "sub2"
  }
}
vm = {
    vm1 = {
        name = "prodvm"
        nickey = "nic1"
        rgkey = "rg-prod"
    }
    vm2 = {
        name = "devvm"
        nickey = "nic2"
        rgkey = "rg-dev"
    }
}