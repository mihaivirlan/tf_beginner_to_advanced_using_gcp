variable "image" { default = "debian-9-stretch-v20220303" }
variable "machine_type" { default = "f1-micro" }

// Working with lists, count, and length
variable "name_count" { default = ["server1", "server2", "server3"] }