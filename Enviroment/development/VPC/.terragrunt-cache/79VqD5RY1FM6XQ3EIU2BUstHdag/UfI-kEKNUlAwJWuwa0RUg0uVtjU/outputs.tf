output "vpc_id" {
  value = aws_vpc.VPCTerragrunt.id
}

output "subnet_id" {
  value = aws_subnet.subnetTerragrunt.id
}