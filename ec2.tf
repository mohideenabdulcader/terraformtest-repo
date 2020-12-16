resource "aws_instance" "myawsserver" {
  ami = "ami-01e36b7901e884a10"
  instance_type = "t2.micro"
  key_name = "mohi-keypair"

  tags = {
    Name = "Mohi-Terraform-Ansible"
    env = "test"
  }
  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /root/inventory"
  }

}

output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}
