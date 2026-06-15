output "resource_group_name" {
  value = module.resource_group.name
}

output "resource_group_location" {
  value = module.resource_group.location
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "acr_name" {
  value = module.acr.name
}

output "app_url" {
  value = "http://${module.container.fqdn}:8000"
}

output "app_ip" {
  value = module.container.ip_address
}
