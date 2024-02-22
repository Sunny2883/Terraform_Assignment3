

resource "aws_vpc" "VPCTerragrunt" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = "default"

  tags = {
    Name = "${var.VPC_name}"
  }
}

resource "aws_subnet" "subnetTerragrunt" {
  vpc_id = aws_vpc.VPCTerragrunt.id
  cidr_block = var.cidr_block_subnet
  availability_zone = var.azs
  
  tags = {
    Name="${var.subnet_name}"
  }

}

resource "aws_internet_gateway" "gwterragrunt" {
  vpc_id = aws_vpc.VPCTerragrunt.id

  tags = {
    Name = "${var.internet_gateway_name}"
  }
}
resource "aws_route_table" "RouteTableTerragrunt" {
  vpc_id = aws_vpc.VPCTerragrunt.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gwterragrunt.id
  }



  tags = {
    Name = "${var.route_table_name}"
  }
}

resource "aws_route_table_association" "tableassociationTerragrunt" {
  subnet_id      = aws_subnet.subnetTerragrunt.id
  route_table_id = aws_route_table.RouteTableTerragrunt.id
}