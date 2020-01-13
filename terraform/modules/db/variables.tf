# db_variables.tf

variable zone {
  description = "Zone"
  default     = "europe-west3-a"
}
variable public_key_path {
  description = "~/.ssh/odv.pub"
}
variable db_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-db-base"
}
