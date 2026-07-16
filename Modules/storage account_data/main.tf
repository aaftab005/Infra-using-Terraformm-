resource "azurerm_storage_account" "firstsa" {
  for_each = var.sanew
  name = each.key
  resource_group_name = var.sacall[each.value.rgkey].name
  location =  var.sacall[each.value.rgkey].location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

variable "sanew" {
  type = map(object({
  rgkey = string
  }))
}

variable "sacall" {
  type = map(any)
}


