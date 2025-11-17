data "azurerm_key_vault" "kv" {
  name                = "hiteshkeyvault01"
  resource_group_name = "hitu-rg-01"
}

data "azurerm_key_vault_secret" "mssql_username" {
  for_each     = var.mssql_server_name
  name         = "mssqlserver-username"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "mssql_password" {
  for_each     = var.mssql_server_name
  name         = "mssqlserver-password"
  key_vault_id = data.azurerm_key_vault.kv.id
}
