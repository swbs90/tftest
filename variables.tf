variable "region" {
  description = "AWS region"
  default     = "ap-northeast-2"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}

variable "vault_addr" {
  description = "Vault address"
  type = string
}

variable "vault_token" {
  description = "Vault token"
  type = strng
}
