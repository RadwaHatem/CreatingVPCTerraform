resource "aws_instance" "public-instance-1" {
  ami = "ami-06e46074ae430fba6"

  instance_type = "t2.micro"

  tags = {

    Name = "public-instance-1"
  }

  subnet_id = aws_subnet.first-public-subnet.id
  associate_public_ip_address          = true

  key_name = aws_key_pair.terraformkey.id

#    provisioner "file" {
#       source      = "/home/radwa/.ssh/terraformkey.pem"
#       destination = "/home/ec2-user/terraformkey.pem"
#   }

  vpc_security_group_ids = [aws_security_group.first-sg.id]

}

resource "aws_instance" "public-instance-2" {

  ami = "ami-06e46074ae430fba6"

  instance_type = "t2.micro"

  tags = {

    Name = "public-instance-2"
  }

  key_name =  aws_key_pair.terraformkey.id
   associate_public_ip_address          = true


#   provisioner "file" {
#     source      = "/home/radwa/.ssh/terraformkey.pem"
#     destination = "/home/ec2-user/terraformkey.pem"
#   }
  subnet_id = aws_subnet.second-public-subnet.id

  vpc_security_group_ids = [aws_security_group.first-sg.id]


}

resource "aws_instance" "private-instance-1" {
  ami = "ami-06e46074ae430fba6"

  instance_type = "t2.micro"

  tags = {

    Name = "private-instance-1"
  }

  subnet_id = aws_subnet.first-private-subnet.id

  vpc_security_group_ids = [aws_security_group.second-sg.id]

  key_name = aws_key_pair.terraformkey.id



}

resource "aws_instance" "private-instance-2" {

  ami = "ami-06e46074ae430fba6"

  instance_type = "t2.micro"

  tags = {

    Name = "private-instance-2"
  }

  subnet_id = aws_subnet.second-private-subnet.id

  vpc_security_group_ids = [aws_security_group.second-sg.id]

  key_name = aws_key_pair.terraformkey.id


}