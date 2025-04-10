Provider "aws" {
  region = "ap-south-1"  # Mumbai region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-002f6e91abff6eb96"  # Amazon Linux 2 AMI for Mumbai (Check latest AMI before deploying)
  instance_type = "t2.micro"  # Free-tier eligible instance type

  tags = {
    Name = "Terraform-EC2-Mumbai"
  }
}
