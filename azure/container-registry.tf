# Creates a container registry on Azure so that we can publish our Docker images.

resource "azurerm_container_registry" "practicums8" {
  name                = "practicum8shanti"
  resource_group_name = azurerm_resource_group.practicums.name
  location            = var.location
  admin_enabled       = true
  sku                 = "Basic"
}

output "registry_hostname" {
  value = azurerm_container_registry.practicums8.login_server
}

output "registry_un" {
  value = azurerm_container_registry.practicums8.admin_username
}

output "registry_pw" {
  value     = azurerm_container_registry.practicums8.admin_password
  sensitive = true
}