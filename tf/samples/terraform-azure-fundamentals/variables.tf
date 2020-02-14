variable "loc" {
  description = "Default Azure region"
  default     = "centralus"
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

variable "webapplocs" {
  description = "Web app locations"
  default     = ["northcentralus", "southcentralus", "centralus"]
}
