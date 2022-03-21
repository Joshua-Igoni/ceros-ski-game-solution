variable "environment" {
  type = string
  description = "The name of the environment we'd like to launch."
  default = "production"
}

variable "repository_url" {
  type = string
  description = "The url of the ECR repository we'll draw our images from."
  default = "298729423209.dkr.ecr.us-east-2.amazonaws.com/ceros-ski"
}

variable "public_key_path" {
  type = string
  description = "The public key that will be used to allow ssh access to the bastions."
  sensitive = true
  default = "~/downloads/mykey.pem"
}
variable "private_subnets_count" {
    description = "number of p.subnets to create"
    type = number
    default = 2
}
variable "public_subnets_count" {
    description = "number of p.subnets to create"
    type = number
    default = 2
}
variable "availability_zones" {
  type        = list
  description = "List of Availability Zones"
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}