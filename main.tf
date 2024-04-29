resource "aws_vpc" "Test-VPC" {
  cidr_block = "192.168.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "Test-VPC"
  }
}
