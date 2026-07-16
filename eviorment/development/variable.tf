variable "sanew" {
  type = map(object({
    #    saname = string
    #   saloc = string 
    rgkey = string
  }))
}

variable "rg" {
  type = map(object({
    location = string
  }))
}
variable "vnet" {
  type = map(any)
}

variable "allsub" {
  type = map(any)
}

variable "nic" {
  type = map(any)
}

variable "vm" {
  type = map(any)
}