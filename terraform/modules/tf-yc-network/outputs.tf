output "yandex_vpc_network" {
  description = "VPC Network to use to other resources"
  value = data.yandex_vpc_network.default
}

output "yandex_vpc_subnets" {
  description = "VPC Subnets to use to other resources"
  value = data.yandex_vpc_subnet.default
} 