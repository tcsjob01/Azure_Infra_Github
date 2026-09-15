rgs = {
  rg1 = {
    name     = "rg-dev-vishal"
    location = "Central India"
  }

  rg2 = {
    name     = "rg-prod-navnet"
    location = "Central India"
  }
}


sas = {
  sa1 = {
    name                     = "vishal17121998"
    resource_group_name      = "rg-dev-vishal"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  sa2 = {
    name                     = "vishal19981712"
    resource_group_name      = "rg-prod-navnet"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnets = {
  Vent1 = {
    name                = "vnet-development"
    resource_group_name = "rg-dev-vishal"
    location            = "Central India"
    vnet_address_space  = ["10.0.0.0/16"]
  }

  vnet2 = {
    name                = "vnet-production"
    resource_group_name = "rg-prod-navnet"
    location            = "Central India"
    vnet_address_space  = ["10.1.0.0/16"]
  }
}


subnets = {
  subnet1 = {
    name                 = "subnet-devlop"
    resource_group_name  = "rg-dev-vishal"
    virtual_network_name = "vnet-development"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "subnet-product"
    resource_group_name  = "rg-prod-navnet"
    virtual_network_name = "vnet-production"
    address_prefixes     = ["10.1.1.0/24"]
  }
}

vms = {

  vm1 = {
    name                = "my-dev001"
    resource_group_name = "rg-dev-vishal"
    location            = "Central India"
    size                = "Standard_B2ats_v2"
    subnet_key          = "subnet1"
    admin_username      = "azureadmin"
    admin_password      = "Virat@123"
  }

  vm2 = {
    name                = "vm-prod001"
    resource_group_name = "rg-prod-navnet"
    location            = "Central India"
    size                = "Standard_B2ats_v2"
    subnet_key          = "subnet2"
    admin_username      = "azureadmin1"
    admin_password      = "Virat@123"

  }
}