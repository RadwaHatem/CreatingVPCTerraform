resource "aws_eip" "elastic-ip-1a" {
  vpc = true
}

resource "aws_eip" "elastic-ip-1b" {
  vpc = true
}