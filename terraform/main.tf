module "tf-yc-network" {
  source = "./modules/tf-yc-network"
}

module "tf-yc-instance" {
  source        = "./modules/tf-yc-instance"
  instance_zone = var.instance_zone
  disk_image_id = var.image_id
  subnet_id     = coalesce(
    one([for s in module.tf-yc-network.yandex_vpc_subnets : s.subnet_id if s.zone == var.instance_zone]),
    var.subnet_id
  )  
}