variable "environment" {}
variable "image_uri" {}
variable "execution_role_arn" {}
variable "public_subnet_ids" {
  type = list(string)
}
variable "vpc_id" {}
variable "cluster_name" {
  type    = string
  default = null
}
variable "service_name" {
  type    = string
  default = null
}
variable "task_family" {
  type    = string
  default = null
}
variable "container_name" {
  type    = string
  default = "react-app-container"
}
variable "container_port" {
  type    = number
  default = 80
}
variable "target_group_arn" {
  type    = string
  default = null
}
