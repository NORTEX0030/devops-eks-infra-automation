variable "vpc_cidr" {
  description = "Vpc CIDR"
  type        = string
}

variable "public_subnets" {
  description = "public_subnets CIDR"
  type        = list(string)
}
variable "ami" {
  description = "AMI ID"
  type        = string
}
variable "instance_type" {
  description = "Instance Type"
  type        = string
}
