# app_variables.tf

variable zone {
  description = "Zone"
  default     = "europe-west3-a"
}
variable public_key_path {
  description = "~/.ssh/odv.pub"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
