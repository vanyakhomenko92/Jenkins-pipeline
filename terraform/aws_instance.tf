
resource "aws_instance" "jenkins_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.jenkins_server.id]
  key_name               = var.aws_instance_key_name
  user_data              = file(var.aws_instance_user_data)

  tags = {
    Name  = var.tags_instance_name
    Owner = var.tags_owner
  }
}

