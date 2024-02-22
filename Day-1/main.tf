provider "google" {
  project = "tokyo-flames-415018"
  credentials = file("key.json")
  region = "us-central1"
  zone = "us-central1-c"
}

resource "google_compute_instance" "my-instance" {
  name         = "my-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-c"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
}
