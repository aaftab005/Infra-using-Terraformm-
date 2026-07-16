resource "azure_application_gateway" "appgw" {
  name  = ""
  resource_group_name = var.rgcall(each.value.agwkey).name
  location = var.rgcall(each.value.agwkey).location

    sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }
    gateway_ip_configuration {
    name      = "aftab-GWip-Confg"
    subnet_id = var.subnetcall(each.value.idkey).id
  }
    frontend_port {
    name = ""
    port = 80
  }

  frontend_ip_configuration {
    name                 = ""
    public_ip_address_id = 
  }

  backend_address_pool {
    name = 

    backend_http_settings {
    name                  = 
    cookie_based_affinity = "Disabled"
    path                  = "/path1/"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
  }

  http_listener {
    name                           = 
    frontend_ip_configuration_name = 
    frontend_port_name             = 
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = 
    priority                   = 9
    rule_type                  = "Basic"
    http_listener_name         = 
    backend_address_pool_name  = 
    backend_http_settings_name = 
  }
}