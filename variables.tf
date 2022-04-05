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

variable "VAULT_ADDR" {
  description = "Vault address"
  type = string
}

variable "VAULT_TOKEN" {
  description = "Vault token"
  type = string
}

variable "VAULT_NAMESPACE" {
  description = "Vault namespace"
  type = string
}
