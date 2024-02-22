terraform{
    source="../../../Modules/Instances"

}
include "root"{
    path= find_in_parent_folders()
}

inputs = {
    instance_ami="ami-06b72b3b2a773be2b"
    Instance_name="InstanceForTerragrunt"
    instance_type="t2.micro"
    region="ap-south-1a"
    subnet_id=dependency.VPC.outputs.subnet_id
    vpc_id=dependency.VPC.outputs.vpc_id
    cidr_block = ["0.0.0.0/0"]
    key_pair="key_pair2"
}

dependency "VPC"{
    config_path="../VPC"

    mock_outputs ={
        
    vpc_id="vpc-23456"
    subnet_id         = "subnet-1234567890"
    }
}