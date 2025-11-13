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

vms = {
  vm1 = {
    nic_name       = "hiteshnic-1"
    location       = "centralindia"
    rg_name        = "hitu-rg-01"
    vnet_name      = "hitu-vnet-01"
    subnet_name    = "hitu-subnet-01"
    pip_name       = "hitu-public-ip-01"
    vm_name        = "hiteshvmfrontend"
    size           = "Standard_F2"
    kv_name        = "hiteshkeyvault01"
    admin_username = "sharmah91"
    admin_password = "Hitumeghu1001@@"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }

  vm2 = {
    nic_name       = "hiteshnic-2"
    location       = "centralindia"
    rg_name        = "hitu-rg-01"
    vnet_name      = "hitu-vnet-01"
    subnet_name    = "hitu-subnet-02"
    pip_name       = "hitu-public-ip-02"
    vm_name        = "hiteshvmbackend"
    size           = "Standard_F2"
    kv_name        = "hiteshkeyvault01"
    admin_username = "sharmah91"
    admin_password = "Hitumeghu1001@@"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}
