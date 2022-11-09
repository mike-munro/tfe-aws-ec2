provider "aws" {
  profile    = "default"
  region     = "ap-southeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
