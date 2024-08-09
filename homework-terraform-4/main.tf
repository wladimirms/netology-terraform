resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

module "vms-hw4" {
  source                 = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name               = var.env_name
  network_id             = yandex_vpc_network.develop.id
  subnet_zones           = var.default_zone
  subnet_ids             = yandex_vpc_subnet.develop.id
  instance_count         = 2
  image_family           = var.vm_family
  instance_core_fraction = var.core_fraction
  preemptible            = true
  public_ip              = true
  
  labels = { 
    tags= "marketing и analytics",
     }
  
  metadata = {
      user-data          = data.template_file.userdata.rendered
      serial-port-enable = 1
  }
}

data template_file "userdata" {
  template = templatefile("${path.module}/cloud-init.yml")

  vars = {
    ssh_pub_key = file("~/.ssh/id_ed25519.pub")
  }
}