variable "location" {
  description = "The Azure region to deploy resources in"
  type        = string
  default     = "centralindia"
}

locals {
  common_tags = {
    owner   = "avneesh"
    project = "devops-lab"
  }
}