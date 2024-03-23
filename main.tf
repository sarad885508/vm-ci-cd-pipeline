resource "google_compute_instance" "vm-instance" {
  name         = "ci-cd-workflow"
  machine_type = "e2-medium"
  zone         = "us-west4-b"
  project      = "compact-record-414005"

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20240110"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}