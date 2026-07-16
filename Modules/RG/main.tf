resource "azurerm_resource_group" "firstrg" {
  for_each = var.rg
  name     = each.key
  location = each.value.location
}

variable "rg" {
  type = map(object({
  location = string
  }))
}


