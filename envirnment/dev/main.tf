module "resource_group" {
  source = "../../child_modules/azurerm_resource_group"

  rgs = var.rgs
}




module "vnet" {
  depends_on = [module.resource_group]

  source = "../../child_modules/azurerm_vnet"

  vnets = var.vnets
}


module "subnet" {
  depends_on = [module.vnet]

  source = "../../child_modules/azurerm_subnet"

  subnets = var.subnets
}

