# configures the AWS provider with the region set to ap-southeast-1

resource "aws_instance" "app_server" {
	# specify arguments here
  ami           = "ami-0ad522a4a529e7aa8" # EC2 AMI
  instance_type = "t3.small"     # EC2 Instance 1ype
  associate_public_ip_address = true
  subnet_id = var.tf_workshop_ex1_subnet_id # Subnet ID
  vpc_security_group_ids = [var.tf_workshop_ex1_vpc_sg_id]# Security Group ID
  tags = {
    Name = "${var.student_id}-Ex1-EC2-Instance"
  }
}