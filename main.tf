provider "aws" {
  region = "eu-west-1"
}


module "vpc" {

  source ="terraform-aws-modules/vpc/aws"
  name ="challenge-vpc"
  cidr = "10.0.0.0/16"
  azs = ["eu-west-1a"]
  public_subnets = ["10.0.1.0/24"]
  private_subnets = ["10.0.2.0/24"]
  enable_nat_gateway = true

}





