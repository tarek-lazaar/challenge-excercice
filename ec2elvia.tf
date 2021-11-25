
resource "aws_instance" "elvia_server" {
    ami             = "ami-0ec23856b3bad62d3" 
  subnet_id       = module.vpc.private_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  user_data = file("./install.sh")
}

resource "aws_instance" "prageeth_server" {
    ami             = "ami-0ec23856b3bad62d3" 
  subnet_id       = module.vpc.private_subnets[0]
  instance_type   = "t3.micro"
  key_name        = "key-challenge"
  security_groups = [aws_security_group.my-sg.id]
  user_data = file("./install.sh")
}


