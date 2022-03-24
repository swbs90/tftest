provider "aws" {
  region = var.region
}
provider "vault" {
  address = var.vault_addr
  token = var.vault_token
}
data "vault_generic_secret" "name"{
 path = "kv2/ec2"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = "${data.vault_generic_secret.name.data["instance_name"]}"
  }
}
