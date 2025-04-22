# modules/ec2/main.tf

resource "aws_instance" "ec2" {
  count             = 2
  ami               = local.aws_instance_ami
  instance_type     = local.aws_instance_type
  key_name          = local.aws_keypair_name
  availability_zone = var.aws_az
  subnet_id         = var.subnet_id

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "${local.aws_instance_name}-${count.index}"
  }
}

resource "aws_key_pair" "tfkey" {
  key_name   = local.aws_keypair_name
  public_key = file("tfkey.pub")
}