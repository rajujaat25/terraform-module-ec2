resource "aws_security_group" "my-sg" {
    name = "MY-SG"
  dynamic "ingress" {
    for_each = [0]
    iterator = port
    content {
      from_port = port.value
      to_port = port.value
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
    
  }
  egress {
     from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  
}