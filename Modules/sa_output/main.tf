resource "azurerm_storage_account" "name" {
  for_each = var.sanew
  name = each.value.saname
  resource_group_name = var.rgcall
  location = 
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

variable "sanew" {
  type = map(object({
    saname = string
#    saloc = string 
    rg_key = string
  }))
}

variable "rgcall" {
  type = map(any)
}