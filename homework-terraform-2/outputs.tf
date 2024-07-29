output "instances_info" {
    description = "The information about instances"
    value = [
      {develop-a = [yandex_compute_instance.platform-a.name, yandex_compute_instance.platform-a.network_interface[0].nat_ip_address, yandex_compute_instance.platform-a.fqdn]},
      {develop-b = [yandex_compute_instance.platform-b.name, yandex_compute_instance.platform-b.network_interface[0].nat_ip_address, yandex_compute_instance.platform-b.fqdn]},
    ]
}