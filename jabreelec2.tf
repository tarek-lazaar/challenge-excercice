resource "aws_instance" "jabreel-instance" {
  ami             = "ami-0ec23856b3bad62d3" #RHEL7
  subnet_id       = module.vpc.private_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  tags            = { Name = "Jabreel's web server" }

}