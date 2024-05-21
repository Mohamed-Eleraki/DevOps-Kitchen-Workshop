# Configure aws provider
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

# Configure aws provider
provider "aws" {
    region = "us-east-1"
    profile = "eraki"  # replace this with your profile name, If you're using the default one remove this line.
}

# Variables Section
variable "dev_vpc1_cidr_block" {}  # Vpc1 cidr block
variable "dev_subnet1_cidr_block" {}  # Subnet1 cidr block
variable "environment" {}   # Envionment name, using in resource tags


# Create a VPC-1 | VPC-1 Configurations
resource "aws_vpc" "vpc-1" {
  cidr_block = var.dev_vpc1_cidr_block

  tags = {
    Name = "vpc-1" # VPC name
    Environment = "${var.environment}"
    Owner   = "eraki"
  }
}

# Create Internet gateway1 into vpc-1
resource "aws_internet_gateway" "igw-1" {
  vpc_id = aws_vpc.vpc-1.id

  tags = {
    Name = "igw-1" # igw name
    Environment = "${var.environment}"
    Owner   = "eraki"
  }
}

# Create subnet-1 into vpc-1
resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.vpc-1.id
  cidr_block        = var.dev_subnet1_cidr_block
  # availability_zone = "us-east-1a"

  tags = {
    Name = "subnet-1" # subnet name
    Environment = "${var.environment}"
    Owner   = "eraki"
  }
}


# Create Route table rt-1 into vpc-1
resource "aws_route_table" "rt-1" {
  vpc_id = aws_vpc.vpc-1.id

  route { # Route any other traffics to the internet gateway
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-1.id
  }

  tags = {
    Name = "rt-1" # route table name
    Environment = "${var.environment}"
    Owner   = "eraki"
  }
}

# Associate the route table to the subent-1 into vpc-1
resource "aws_route_table_association" "rt-ass-1" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.rt-1.id
}
