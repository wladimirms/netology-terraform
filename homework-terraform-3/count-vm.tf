resource "yandex_compute_instance" "web" {
  count = length(var.instances)
  name  = "netology-develop-platform-web-${var.instances[count.index]}"
  platform_id = var.vm_web_platform_id
  zone        = var.default_zone
  depends_on = [
    yandex_compute_instance.db
  ]
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
    subnet_id = yandex_vpc_subnet.develop.id
    security_group_ids = [var.security_group_id]
    nat       = true
  }

  metadata = {
    serial-port-enable = local.serial_port_enable
    ssh-keys           = local.id_rsa_key
  }
}
