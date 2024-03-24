resource "aws_instance" "example" {
  ami= var.ami_id
  instance_type = var.instance_type
  subnet_id     = data.aws_subnet.default.id  # Using data source for subnet
  security_groups = [data.aws_security_group.default.id]  # Using data source for security group
  tags = {
     Name             = var.instance_name
    "Owner"           = var.owner
    "Purpose"         = var.purpose
    "ApplicationName" = var.application_name
    "ProjectName"     = var.project_name
    "Client"          = var.client
    "Department"      = var.department
    "StartDate"       = var.start_date
    "EndDate"         = var.end_date
  }
  }
 

# Retrieve information about the default VPC
data "aws_vpc" "default" {
  default = true
}

# Retrieve information about the default subnet within the default VPC
data "aws_subnet" "default" {
  vpc_id            = data.aws_vpc.default.id
  cidr_block        = "172.31.16.0/20"  # Adjust the CIDR block to match the specific subnet
}


# Retrieve information about the default security group within the default VPC
data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

# public and private key
resource "aws_key_pair" "TF_key" {
  key_name = var.key_name
  public_key= tls_private_key.rsa.public_key_openssh
}
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "local_file" "TF_key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tfkey4"
}




