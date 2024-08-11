output "network_id" {
   value = yandex_vpc_network.vpc_dev.id
}

output "subnet_id" {
   value = yandex_vpc_subnet.subnet_dev.id
}