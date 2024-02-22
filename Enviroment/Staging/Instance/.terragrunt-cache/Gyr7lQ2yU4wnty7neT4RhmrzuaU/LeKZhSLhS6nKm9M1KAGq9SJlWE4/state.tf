# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "terraformsunny"
    dynamodb_table = "terraform-table"
    encrypt        = true
    key            = "Staging/Instance/terraform.tfstate"
    profile        = "terraform-sunny"
    region         = "ap-south-1"
    role_arn       = "arn:aws:iam::730335487196:role/terraform"
  }
}