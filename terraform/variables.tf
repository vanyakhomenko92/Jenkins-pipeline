variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-06ce824c157700cd2"
}

variable "allow_ports" {
  type    = list(any)
  default = ["443", "80", "22", "8080"]

}

variable "tags_owner" {
  default = "Yurii Bugaenko"
}

variable "tags_instance_name" {
  default = "Jenkins server build by Terraform"
}

variable "tags_security_group_name" {
  default = "Jenkins security group build by Terraform"
}

variable "protocol" {
  default = "tcp"
}

variable "aws_security_group_name" {
  default = "sg_jenkins_server"
}

variable "aws_security_group_description" {
  default = "Allow traffic through port"
}

variable "ingress_description" {
  default = "TLS from VPC: port 443, 80, 22"
}

variable "aws_instance_user_data" {
  default = "info.sh"
}

variable "aws_instance_key_name" {
  default = "tf-key"
  description = "Created public key wich add on aws."
}

variable "aws_key_pair_key_name" {
  default = "tf-key"
  description = "Created key pair."
}

variable "tls_private_key_algorithm" {
  default = "RSA"
}

variable "tls_private_key_rsa_bits" {
  default = 4096
}

variable "local_file_filename" {
  default = "tfkey"
  description = "Created file with private key."
}