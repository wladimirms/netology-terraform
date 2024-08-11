module "vpc_dev" {
  source       = "./vpc"
  env_name     = "develop"
  zone = "ru-central1-a"
  cidr = "10.0.1.0/24"
}

module "vms-hw4" {
  source                 = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name               = var.env_name
  network_id             = module.vpc_dev.network_id
  subnet_zones           = [var.default_zone]
  subnet_ids             = [ module.vpc_dev.subnet_id ]
  instance_count         = 2
  image_family           = var.vm_family
  instance_core_fraction = var.core_fraction
  preemptible            = true
  public_ip              = true
  
  for_each = {for owner in var.each_owner: owner.vm_owner => owner}

  labels = { 
    owner = "${each.value.vm_owner}",
    org = "ooo_roga_and_coputa"
     }

  metadata = {
      user-data          = data.template_file.userdata.rendered
      serial-port-enable = 1
  }
}

data template_file "userdata" {
  template = file("${path.module}/cloud-init.yml")

  vars = {
    ssh_pub_key = file("~/.ssh/id_ed25519.pub")
  }
}

variable "each_owner" {
  type = list(object({
      vm_owner=string, 
      }))
  default = [
    {vm_owner = "marketing"},
    {vm_owner = "analytics"}
  ]   
}