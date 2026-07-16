resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnet
  name = each.value.name
  resource_group_name = var.rgcall[each.value.rgkey].name
  location = var.rgcall[each.value.rgkey].location
  address_space = each.value.adrsspc
    
  }

  variable "vnet" {
    type = map(any)
  }

#  variable "vnetcall" {
#    type = map(any)
# }

 variable "rgcall" {
   type = map(any)
 }