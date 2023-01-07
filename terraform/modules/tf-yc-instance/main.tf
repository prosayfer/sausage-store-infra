resource "yandex_compute_instance" "vm-1" {
  name        = "chapter5-lesson2-std-011-009"
  zone        = var.instance_zone
  platform_id = var.platform_id

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.disk_image_id
      size     = var.disk_size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    user-data = "${file("user-data.yml")}"
  }

  scheduling_policy {
    preemptible = true
  }
}