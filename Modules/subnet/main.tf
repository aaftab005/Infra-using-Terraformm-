resource "azurerm_subnet" "subnet" {
 for_each = var.allsub
 name = each.value.name
 resource_group_name = var.rgcall[each.value.rgkey].name
 virtual_network_name = var.vnetcall[each.value.vnetkey].name
 address_prefixes =  each.value.adrspre

}

variable "allsub" {
  type = map(any)
}

variable "vnetcall" {
  type = map(any)
}


variable "rgcall" {
  type = map(any)
}