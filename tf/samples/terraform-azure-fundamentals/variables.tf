variable "loc" {
  description = "Default Azure region"
  default     = "Central US"
}

variable "rgprefix" {
  description = "Resource group prefix"
  default     = "citadel-training"
}
variable "tags" {
  default = {
    source = "citadel"
    env    = "training"
  }
}
