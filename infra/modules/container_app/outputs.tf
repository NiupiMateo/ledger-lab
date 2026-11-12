output "url" {
  description = "URL publica HTTPS."
  value       = "https://${azurerm_container_app.this.ingress[0].fqdn}"
}

output "environment_id" {
  description = "Ambiente de Container Apps donde corre la app."
  value       = azurerm_container_app.this.container_app_environment_id
}

output "creates_environment" {
  description = "Indica si el modulo creo su propio ambiente."
  value       = length(azurerm_container_app_environment.this) == 1
}
