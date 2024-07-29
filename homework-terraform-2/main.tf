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
  name        = var.vm_web_name
  platform_id = var.vm_web_platform_id
  zone        = var.develop_a_zone
  #name        = "netology-develop-platform-web"
  #platform_id = "standard-v2"
  resources {
    cores         = var.vm_web_cores
    memory        = var.vm_web_memory
    core_fraction = var.vm_web_fraction
    #cores         = 2
    #memory        = 2
    #core_fraction = 5
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
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }

}

resource "yandex_compute_instance" "platform-b" {
  name        = var.vm_db_name
  platform_id = var.vm_db_platform_id
  zone        = var.develop_b_zone
  resources {
    cores         = var.vm_db_cores
    memory        = var.vm_db_memory
    core_fraction = var.vm_db_fraction
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
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }

}
