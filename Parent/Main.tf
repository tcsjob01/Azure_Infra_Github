module "rg" {
  source  = "../RG_child"
  rg_name = var.rgs
}

module "sa" {
  source     = "../SA_child"
  sa_name    = var.sas
  depends_on = [module.rg]
}

module "vnet" {
  source     = "../VNET_child"
  vnet_name  = var.vnets
  depends_on = [module.rg]

}

module "subnet" {
  source      = "../SUBNET_child"
  subnet_name = var.subnets
  depends_on  = [module.rg, module.vnet]
}

module "vm" {

  source = "../VM_child"

  vm_name = {

    for key, vm in var.vms :

    key => merge(vm, {
      subnet_id = module.subnet.subnet_ids[vm.subnet_key]
    })

  }

  depends_on = [module.subnet]
}
