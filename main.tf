provider "aws" {
  access_key = "AKIAU6GDU5CD4MU356XT"                     //update
  secret_key = "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" //update
  region     = "us-east-2"                                //update
}
resource "aws_instance" "web" {
  ami                         = var.ami-id
  instance_type               = var.small
  key_name                    = var.key_pair
  subnet_id                   = var.public-subnet
  associate_public_ip_address = true
  security_groups             = var.security_group
  tags                        = var.qtree-web-tags
  user_data = "${file("setup.sh")}"
}
