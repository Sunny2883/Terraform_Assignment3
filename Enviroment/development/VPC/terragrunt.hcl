terraform{
    source="../../../Modules/VPC"

}
include "root"{
    path= find_in_parent_folders()
}

inputs={
   VPC_name="VPCTerragrunt"
   azs="ap-south-1a"
   subnet_name="subnetTerragrunt"
   internet_gateway_name="gwterragrunt"
   route_table_name="RouteTableTerragrunt"
   security_group_name="SecurityGroupTerragrunt"
   cidr_block_vpc="10.0.0.0/16"
   cidr_block_subnet= "10.0.1.0/24"

}

