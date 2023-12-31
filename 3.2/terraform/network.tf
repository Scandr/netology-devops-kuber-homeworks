# Network
resource "yandex_vpc_network" "default" {
  name = "mynewnet"
}

resource "yandex_vpc_subnet" "default" {
  name = "mynewsubnet"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.101.0/24"]
}
