resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "develop-a" {
  name           = var.vpc_name_a
  zone           = var.develop_a_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.develop_a_cidr
}

resource "yandex_vpc_subnet" "develop-b" {
  name           = var.vpc_name_b
  zone           = var.develop_b_zone 
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.develop_b_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_family
  #family = "ubuntu-2004-lts"
}
resource "yandex_compute_instance" "platform-a" {
  name        = local.vm_web_name_int
  platform_id = var.vm_web_platform_id
  zone        = var.develop_a_zone
  resources {
    cores         = var.vms_resources.web.cores
    memory        = var.vms_resources.web.memory
    core_fraction = var.vms_resources.web.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop-a.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.metadata.develop.serial-port-enable
    ssh-keys           = var.metadata.develop.ssh-keys
  }

}

resource "yandex_compute_instance" "platform-b" {
  name        = local.vm_db_name_int
  platform_id = var.vm_db_platform_id
  zone        = var.develop_b_zone
  resources {
    cores         = var.vms_resources.db.cores
    memory        = var.vms_resources.db.memory
    core_fraction = var.vms_resources.db.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop-b.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.metadata.develop.serial-port-enable
    ssh-keys           = var.metadata.develop.ssh-keys
  }

}
