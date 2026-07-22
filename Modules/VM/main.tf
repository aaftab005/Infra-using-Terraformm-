resource "azurerm_linux_virtual_machine" "lvm" {
  for_each = var.vm
  name = each.value.name
  resource_group_name = var.rgcall[each.value.rgkey].name
  location = var.rgcall[each.value.rgkey].location
  size                = "Standard_D4_v5"
  admin_username      = "extrauser"
  network_interface_ids = [var.niccall[each.value.nickey].id]

    admin_ssh_key {
    username   = "extrauser"
    public_key = var.ssh_public_key
  }
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
   source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}


variable "vm" {
  type = map(any)
}

variable "rgcall" {
  type = map(any)
}

variable "niccall" {
  type = map(any)
}

variable "ssh_public_key" {
  type = string
}