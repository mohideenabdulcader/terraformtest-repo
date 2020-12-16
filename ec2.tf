resource "aws_instance" "myawsserver" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "MohiJenkins-Terraform-ec2-instance-V2"
    Env = "Prod"
    Creator = "Mohideen"
  }
}
#terraform {
#  backend "s3" {
#    bucket  = "mohiterraformtest"
#    key  = "terraform/state"
#    region = "us-east-2"
#   access_key = "XXXXXXXXXXXXXXXXXXXXXX"
#   secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
#  }
#}
output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}

