resource "aws_key_pair" "my-key" {
 key_name = "frist-key"
 public_key = file("${path.module}/rsa_id.pub")
  
}