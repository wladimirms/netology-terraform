resource "yandex_compute_disk" "hdd-disk" {
  count = length(var.storages)
  name = "hdd-disk-${var.storages[count.index]}"
  size = 1
}

resource "yandex_compute_instance" "storage" {
  name        = var.storage
  platform_id = var.vm_web_platform_id
  depends_on = [
    yandex_compute_disk.hdd-disk
  ]
  resources {
    cores         = 2
    memory        = 1
    core_fraction = 5
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  dynamic "secondary_disk" {
    for_each = "${yandex_compute_disk.hdd-disk.*.id}"
    content {
 	    disk_id = yandex_compute_disk.hdd-disk["${secondary_disk.key}"].id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = local.serial_port_enable
    ssh-keys           = local.id_rsa_key
  }
}