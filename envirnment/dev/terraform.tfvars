rgs = {
  rg1 = {
    name     = "kk1-rg"
    location = "centralindia"
  }
  rg2 = {
    name     = "kk2-rg"
    location = "centralindia"
  }

 rg3 = {
    name     = "kk3-rg"
    location = "eastus"
 }

}

vnets = {
  vnet1 = {
    name                = "frontend-vnet-kk"
    location            = "centralindia"
    resource_group_name = "kk1-rg"
    address_space       = ["10.26.0.0/16"]
  }

  vnet2 = {
    name                = "backend-vnet-kk"
    location            = "centralus"
    resource_group_name = "kk2-rg"
    address_space       = ["10.27.0.0/16"]
  }
}

subnets = {
  sn1 = {
    name                 = "forntend-subnet-kk"
    resource_group_name  = "kk1-rg"
    virtual_network_name = "frontend-vnet-kk"
    address_prefixes     = ["10.26.1.0/24"]
  }

  sn2 = {

    name                 = "backend-subnet-kk"
    resource_group_name  = "kk2-rg"
    virtual_network_name = "backend-vnet-kk"
    address_prefixes     = ["10.27.1.0/24"]
  }
}


