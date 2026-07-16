resource "azurerm_network_interface" "nic" {
  for_each = var.nic
  name = each.value.name
  resource_group_name = var.rgcall[each.value.nickey].name
  location = var.rgcall[each.value.nickey].location
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnetcall[each.value.subnetkey].id
    private_ip_address_allocation = "Dynamic"
  }
}

variable "nic" {
  type = map(any)
}

variable "rgcall" {
  type = map(any)
}

variable "subnetcall" {
  type = map(any)
}