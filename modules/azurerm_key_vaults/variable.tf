variable "kv_name" {
  type = map(object({
    name     = string
    location = string
    rg_name  = string
  }))
}