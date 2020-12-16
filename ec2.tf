resource "aws_instance" "myawsserver" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "MohiJenkinsTest-Terraform-ec2-instance-V2"
    Env = "Prod"
    Creator = "Mohideen"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}

