module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}
module "vnet" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_vnet"
  vnets      = var.vnets

}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}