resource "aws_instance" "webserver" {
    ami = "ami-07b36ea9852e986ad"
    instance_type = "t2.micro"
    key_name = aws_key_pair.my-key.key_name
   tags = {
     name = "web"
   }
}