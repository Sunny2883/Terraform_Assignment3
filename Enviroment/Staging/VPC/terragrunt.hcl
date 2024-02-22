terraform{
    source="../../../Modules/VPC"

}
include "root"{
    path= find_in_parent_folders()
}

inputs={
   VPC_name="VPCTerragrunt"
   azs="ap-south-1b"
   subnet_name="subnetTerragruntforstaging"
   internet_gateway_name="gwterragruntforstaging"
   route_table_name="RouteTableTerragruntforstaging"
   security_group_name="SecurityGroupTerragruntforstaging"
   cidr_block_vpc="10.0.0.0/16"
   cidr_block_subnet= "10.0.1.0/24"

}

