provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_instance" "my-ec2" {
  ami = "ami-image"
  instance_type = "t2.micro"
  
  tags = {
    Name = "my instance" 
  }
}


# run
# 1. terraform init (installs provider based data)
# 2. terraform plan
# 3. terraform apply
