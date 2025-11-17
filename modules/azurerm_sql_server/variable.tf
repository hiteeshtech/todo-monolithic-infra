variable "mssql_server_name" {
  type = map(object({
    mssql_server_name   = string
    rg_name             = string
    location            = string
    version             = string
    minimum_tls_version = string

  }))
}
