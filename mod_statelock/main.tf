resource "aws_instance" "this" {
  ami                     = "${var.ami}"
  instance_type           = "${var.instance_type}"

  
  tags = {
    Name = "${var.mytag}"
  }
}
resource "aws_security_group" "security" {
        name = "security"
        description = "ssh and http ports"

        ingress {
                from_port = "${var.port}"
                to_port = "${var.port}"
                protocol = "tcp"
                cidr_blocks = "${var.cidr_blocks}"
}
}
