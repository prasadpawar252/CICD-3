variable "aws_region" {
  default = "ap-south-1"
}

variable "environment" {}

variable "vpc_cidr" {}

variable "image_uri" {}

variable "ecs_cluster_name" {
  default = null
}

variable "ecs_service_name" {
  default = null
}
