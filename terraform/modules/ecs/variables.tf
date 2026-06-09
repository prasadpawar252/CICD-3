variable "environment" {}
variable "image_uri" {}
variable "execution_role_arn" {}
variable "public_subnet_ids" {
  type = list(string)
}
