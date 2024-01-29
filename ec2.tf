# provider "aws" {
#   region  = "us-west-2"
#   profile = "sandbox"
# }

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "web" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }

resource "time_sleep" "wait_150_sec" {
  create_duration = "150s"
}