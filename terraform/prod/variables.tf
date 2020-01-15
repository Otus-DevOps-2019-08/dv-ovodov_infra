# variables.tf

variable project {
  # Описание переменной
  description = "infra-253215"
}
variable region {
  # Описание переменной
  description = "europe-west3"
  # Значение по умолчанию
  default = "europe-west3"
}
variable zone {
  # Описание переменной
  description = "Zone"
  # Значение по умолчанию
  default = "europe-west3-a"
}
variable public_key_path {
  # Описание переменной
  description = "~/.ssh/odv.pub"
}
variable disk_image {
  # Описание переменной
  description = "reddit-base"
}
variable private_key_path {
  # Описание переменной
  description = "~/.ssh/odv"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
