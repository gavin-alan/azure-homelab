resource "azurerm_container_group" "main" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = "Public"
  dns_name_label      = var.dns_name_label
  os_type             = "Linux"
  tags                = var.tags

  image_registry_credential {
    server   = var.acr_login_server
    username = var.acr_username
    password = var.acr_password
  }

  container {
    name   = "devops-homelab"
    image  = "${var.acr_login_server}/devops-homelab:latest"
    cpu    = "0.5"
    memory = "1"

    ports {
      port     = 8000
      protocol = "TCP"
    }

    environment_variables = {
      CLOUD_PROVIDER = "Azure"
      APP_PHASE      = "Phase 3: Azure ACI + ACR"
    }
  }
}
