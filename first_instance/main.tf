resource "google_compute_instance" "default" {
  // Example with usage of lists, count, and length
  count = "${length(var.name_count)}"

  name = "list-${count.index+1}"
  // Example with usage of map
  machine_type = "${var.machine_type["dev"]}"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
        // Example with usage of variables
        image = var.image
    }
  }

  network_interface {
    network = "default"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
// Example of outputs
output "machine_type" { value = "${google_compute_instance.default.*.machine_type}" }
output "name" { value = "${google_compute_instance.default.*.name}" }
output "zone" { value = "${google_compute_instance.default.*.zone}" }
# output "boot_disk" { value = "${google_compute_instance.default.boot_disk[0].initialize_params[0].image}" }
# output "network_interface" { value = "${google_compute_instance.default.network_interface[0].network}" }
