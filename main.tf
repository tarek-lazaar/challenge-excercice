provider "aws" {
  region = "eu-west-1"
}


module "vpc" {

  source             = "terraform-aws-modules/vpc/aws"
  name               = "challenge-vpc"
  cidr               = "10.0.0.0/16"
  azs                = ["eu-west-1a"]
  public_subnets     = ["10.0.1.0/24"]
  private_subnets    = ["10.0.2.0/24"]
  enable_nat_gateway = true

}

#EC2 instance security group
resource "aws_security_group" "my-sg" {
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "MY-SG"
  }
}

resource "aws_instance" "tarek-instance" {
  ami             = "ami-0ec23856b3bad62d3" #RHEL7
  subnet_id       = module.vpc.private_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  tags            = { Name = "Tarek server" }


}
resource "aws_instance" "shared-instance" {
  ami             = "ami-0ec23856b3bad62d3" #RHEL7
  subnet_id       = module.vpc.public_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  tags            = { Name = "Shared server" }


}

resource "aws_instance" "elvia-instance" {
  ami             = "ami-0ec23856b3bad62d3" #RHEL7
  subnet_id       = module.vpc.private_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  tags            = { Name = "Elvia-server" }


}

resource "aws_instance" "jabreel-instance" {
  ami             = "ami-0ec23856b3bad62d3" #RHEL7
  subnet_id       = module.vpc.private_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  tags            = { Name = "Jabreel-server" }


}

resource "aws_instance" "prageeth-instance" {
  ami             = "ami-0ec23856b3bad62d3" #RHEL7
  subnet_id       = module.vpc.private_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  tags            = { Name = "Prageeth-server" }


}


resource "aws_instance" "ayo-instance" {
  ami             = "ami-0ec23856b3bad62d3" #RHEL7
  subnet_id       = module.vpc.private_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  tags            = { Name = "Ayo-server" }


}




