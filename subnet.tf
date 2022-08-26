# creating 1st web subnet
resource "aws_subnet" "public-subnet-1" {
  vpc_id = "${aws_vpc.demovpc.id}"
  cidr_block = "${var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"
  tags = {
    Name = "Server-Subnet-1"
  }
}
# creating 2nd web subnet
resource "aws_subnet" "public-subnet-2" {
  vpc_id = "${aws_vpc.demovpc.id}"
  cidr_block = "${var.subnet2_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1b"
  tags = {
    Name = "Server-Subnet-2"
  }
}