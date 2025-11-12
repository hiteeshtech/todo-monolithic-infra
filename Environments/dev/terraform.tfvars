rg_name = {
  rg1 = {
    name       = "hitu-rg-01"
    location   = "centralindia"
    managed_by = "hitesh maalikana haq"
    tags = {
      environment = "dev"
      project     = "todo-monolithic-infra"
    }
  }
}

vnet_name = {
  vnet1 = {
    name          = "hitu-vnet-01"
    rg_name       = "hitu-rg-01"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]
    tags = {
      environment = "dev"
      project     = "todo-monolithic-infra"
    }

    subnets = [{
      name             = "hitu-subnet-01"
      address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "hitu-subnet-02"
        address_prefixes = ["10.0.2.0/24"] # Changed from 10.1.0.0/24 to be within VNet range
    }]
  }
}

key_vaults = {
  kv_frontend = {
    name     = "hiteshkeyvault01"
    location = "centralindia"
    rg_name  = "hitu-rg-01"
    tags = {
      environment = "dev"
      project     = "todo-monolithic-infra"
    }
  }
}

public_ip_name = {
  pip1 = {
    name              = "hitu-public-ip-01"
    rg_name           = "hitu-rg-01"
    location          = "centralindia"
    allocation_method = "Static"
  }

  pip2 = {
    name              = "hitu-public-ip-02"
    rg_name           = "hitu-rg-01"
    location          = "centralindia"
    allocation_method = "Static"
  }
}