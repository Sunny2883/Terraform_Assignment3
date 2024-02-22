
resource "aws_instance" "InstanceForTerragrunt" {
    instance_type = var.instance_type
    ami = var.instance_ami
    key_name = "${aws_key_pair.key-tf.key_name}"
    subnet_id = var.subnet_id
    vpc_security_group_ids =[aws_security_group.SecurityGroupTerragrunt.id]
    associate_public_ip_address = true
    tags = {
        Name=var.Instance_name
    }
    
  user_data = <<EOF
#!bin/bash
yum -y update
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hello World" > /var/www/html/index.html
    EOF
  
}