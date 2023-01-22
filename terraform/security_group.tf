resource "aws_security_group" "jenkins_server" {
  name        = var.aws_security_group_name
  description = var.aws_security_group_description

  dynamic "ingress" {
    for_each = var.allow_ports
    content {
      description = var.ingress_description
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = var.protocol
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = var.tags_security_group_name
    Owner = var.tags_owner
  }
}
