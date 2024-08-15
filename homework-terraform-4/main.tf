module "vpc_dev" {
  source       = "./vpc"
  env_name     = "develop-1"
  zone = "ru-central1-a"
  cidr = "10.0.1.0/24"
}

module "vm-marketing" {
  source                 = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  instance_name          = "marketing"
  env_name               = var.env_name
  network_id             = module.vpc_dev.network_id
  subnet_zones           = [var.default_zone]
  subnet_ids             = [module.vpc_dev.subnet_id]
  instance_count         = 1
  image_family           = var.vm_family
  instance_core_fraction = var.core_fraction
  preemptible            = true
  public_ip              = true

  labels = { 
    owner = "marketing",
    org = "ooo_roga_and_coputa"
     }

  metadata = {
      user-data          = data.template_file.userdata.rendered
      serial-port-enable = 1
  }
}

module "vm-analytics" {
  source                 = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  instance_name          = "analytics"
  env_name               = var.env_name
  network_id             = module.vpc_dev.network_id
  subnet_zones           = [var.default_zone]
  subnet_ids             = [module.vpc_dev.subnet_id]
  instance_count         = 1
  image_family           = var.vm_family
  instance_core_fraction = var.core_fraction
  preemptible            = true
  public_ip              = true

  labels = { 
    owner = "analytics",
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
