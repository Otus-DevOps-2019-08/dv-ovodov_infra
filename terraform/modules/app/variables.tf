# app_variables.tf

variable zone {
  description = "europe-west3-c"
  default = "europe-west3-c"
}
variable public_key_path {
  description = "~/.ssh/odv.pub"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
