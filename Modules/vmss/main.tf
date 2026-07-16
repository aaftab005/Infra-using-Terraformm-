resource "azurerm_linux_virtual_machine_scale_set" "vm" {
   for_each = var.vm
   name = each.value.name
   resource_group_name = var.rgcall(each.value.vmsskey).name
   location = var.rgcall(each.value.vmsskey).location
   sku                 = "Standard_D4_v5"
  instances           = 1
  admin_username      = "xtrauser"

  admin_ssh_key {
    username   = "xtrauser"
    public_key = file("C:\Users\Admin/.ssh/id_ed25519")
  }
   source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
    network_interface {
    name    = each.value.nicname
    primary = true

    ip_configuration {
      name      = "andar-ka-admi"
      primary   = true
      subnet_id = var.subnetcall(each.value.vmsubkey).id
    }
  }
}

variable "vm" {
  type = map(any)
}
variable "rgcall" {
  type = map(any)
}

variable "subnetcall" {
  type = map(any)
}