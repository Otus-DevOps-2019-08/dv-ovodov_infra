# db_main.tf

resource "google_compute_instance" "db" {
  name         = "reddit-db"
  machine_type = "g1-small"
  zone         = var.zone
  tags         = ["reddit-db"]
  # определение загрузочного диска
  boot_disk {
    initialize_params {
      image = var.db_disk_image
    }
  }
  metadata = {
    # путь до публичного ключа
    ssh-keys = "odv:${file(var.public_key_path)}"
  }
  network_interface {
    network = "default"
    access_config {
      # nat_ip = google_compute_address.app_ip.address
    }
  }
}

resource "google_compute_firewall" "firewall_mongo" {
  name    = "allow-mongo-default"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }
  target_tags = ["reddit-db"]
  source_tags = ["reddit-app"]
}
