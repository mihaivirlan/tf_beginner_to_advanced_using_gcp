variable "image" { default = "debian-9-stretch-v20220303" }

// Working with map
variable "machine_type" { 
    type = map
    default = {
        "dev" = "n1-standard-1"
        "prod" = "production_box_wont_work"
    }
 }

// Working with lists, count, and length
variable "name_count" { default = ["server1", "server2", "server3"] }