
resource "aws_security_group" "SecurityGroupTerragrunt" {
    description = "Allow HTTP (port 80) and SSH (port 22) ingress traffic"
    name = "terra-sg"
    vpc_id = var.vpc_id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.cidr_block
  }

   ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_block
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  
    cidr_blocks = var.cidr_block  
  }
}