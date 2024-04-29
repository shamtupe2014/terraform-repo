resource "aws_vpc" "Test-VPC" {
  cidr_block = "192.168.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "Test-VPC"
  }
}

resource "aws_instance" "jenkins-ec2" {
  ami = var.ami-linux-us-west-2
  instance_type = var.instance_type
  security_groups = [ var.sg-all-allowed ]
  subnet_id = var.public-az-a
  associate_public_ip_address = true

  tags = {
    Name = "jenkins-ec2"
  }
}
