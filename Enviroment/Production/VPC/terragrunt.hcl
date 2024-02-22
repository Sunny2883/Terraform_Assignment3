terraform{
    source="../../../Modules/VPC"

}
include "root"{
    path= find_in_parent_folders()
}

inputs={
   VPC_name="VPCTerragruntforproduction"
   azs="ap-south-1b"
   subnet_name="subnetTerragruntforproduction"
   internet_gateway_name="gwterragruntforproduction"
   route_table_name="RouteTableTerragruntforproduction"
   security_group_name="SecurityGroupTerragruntforproduction"
   cidr_block_vpc="10.0.0.0/16"
   cidr_block_subnet= "10.0.1.0/24"

}

