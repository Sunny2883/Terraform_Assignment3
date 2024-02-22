Requirements
-•	Terraform v1.7.3 installed on Windows_amd64.
-•	An AWS account with permissions to create and manage S3 buckets and DynamoDB tables.
-•	AWS credentials configured locally on the machine.

|Tool|Version|Description|
|--|--|--|
|terrform|v1.7.3|Infrastructure as Code tool for building, changing, and versioning infrastructure safely and efficiently. |
|terragrunt|v0.55.1| Thin wrapper for Terraform that provides extra tools for working with multiple Terraform modules. |

|AWS resource | Name | ARN link | Description|
|--|--|--|--|
|S3 Bucket|terraformsunny|arn:aws:s3:::terraformsunny|Object storage service used for storing Terraform state files remotely.|
|IAM Role|terraform|arn:aws:iam::730335487196:role/terraform|IAM role assumed by Terraform or Terragrunt for AWS operations.|
| IAM Policy |Terraform-access|arn:aws:iam::730335487196:policy/Terraform-access|Policy attached to the IAM role defining permissions for AWS resources.|
|DynamoDB Table|terraform-table|arn:aws:dynamodb:ap-south-1:730335487196:table/terraform-table|Table used for state locking in Terraform remote state configuration.|
| IAM User |terraform-sunny|arn:aws:iam::730335487196:user/terraform-sunny/terraform-table|IAM user with necessary permissions for Terraform and Terragrunt.|
|IAM group|terraform-group|arn:aws:iam::730335487196:group/terraform-group|IAM group with necessary permissions for Terraform and Terragrun.|

Directory Structure :
Environments/
├── Development/
│   ├── Instances/
│   └── VPC/
├── Production/
│   ├── Instances/
│   └── VPC/
└── Staging/
    ├── Instances/
    └── VPC/

Module/
|---Instanc
|---VPC

Setup Terraform Environment

Install Terraform:

-•	Download and install Terraform from the official website or use a package manager.
-•	Initialize Terraform:
-•	Run terraform init in an empty directory where you plan to store your Terraform configurations.


