# db_variables.tf

variable zone {
  description = "Zone"
  default     = "europe-west3-a"
}
variable source_ranges {
  description = "Source ranges"
}
variable name {
  description = "Name"
  default     = "default-allow-ssh"
}
variable network {
  description = "Network"
  default     = "default"
}
