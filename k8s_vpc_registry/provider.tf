variable "path" {
  default = "/home/mihai/udemy_courses/terraform/terraform_beginner_to_advanced_using_gcp/credentials"
}

provider "google" {
  project = "mihai-test-341609"
  region = "us-central1-a"
  // Example usage of credentials (working with service account)
  credentials = "${file("${var.path}/mihai-test-341609-554fb64356a9.json")}"
}

provider "google-beta" {
  project = "mihai-test-341609"
  region = "us-central1-a"
  // Example usage of credentials (working with service account)
  credentials = "${file("${var.path}/mihai-test-341609-554fb64356a9.json")}"
}