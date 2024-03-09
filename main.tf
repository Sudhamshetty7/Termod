provider "aws" {
 region "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.medium"
  security_groups = [aws_security_group.example_sg.name]
  user_data = file("docker.sh")
  tags = {
    Name = "Assigment-docker1"
  }
}
resource "aws_security_group" "example_sg" {
  name        = "sg"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sg"
  }
}
