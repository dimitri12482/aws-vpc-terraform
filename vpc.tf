# Create a VPC
resource "aws_vpc" "myvpc"{
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "MyTerraformVPC"
    }
}

# Create a Public subnet
resource "aws_subnet" "PublicSubnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
}
# Create a Private Subnet
resource "aws_subnet" "PrivateSubnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.2.0/24"
}
 
# Create a Internet Gateway (To have an internet connection to a public subnet)
resource "aws_internet_gateway" "ipw" {
  vpc_id = aws_vpc.myvpc.id
}

# Define route table for public subnet (which is attached to the internet gateway)
resource "aws_route_table" "PublicRT" {
    vpc_id = aws_vpc.myvpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ipw.id
    }
  
}
# Create route table association public subnet 
resource "aws_route_table_association" "PublicRTassociation" {
    subnet_id = aws_subnet.PublicSubnet.id
    route_table_id = aws_route_table.PublicRT.id
}