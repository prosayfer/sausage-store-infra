output "internal_ip_address" {
  description = "An internal IP address of the instance"
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

output "external_ip_address" {
  description = "An assigned external IP address if the instance has an NAT enabled"
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}