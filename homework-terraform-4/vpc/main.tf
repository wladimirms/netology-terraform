terraform {
  required_providers {
	yandex = {
  	source = "yandex-cloud/yandex"
	  }
  }
  required_version = ">=0.13"
}

resource "yandex_vpc_network" "vpc_dev" {
  name = var.env_name
}

resource "yandex_vpc_subnet" "subnet_dev" {
  name       	    = "${var.env_name}-${var.zone}"
  zone            = var.zone
  network_id    	= yandex_vpc_network.vpc_dev.id
  v4_cidr_blocks  = [var.cidr]
}