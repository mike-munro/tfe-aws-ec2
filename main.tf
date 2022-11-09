module "ec2_instance" {
  source  = "./module/ec2/"

  name = "single-instance"

  ami                    = "ami-02a66f06b3557a897" #AL2
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = [""]
  subnet_id              = "subnet-01becfe4d413783c4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}