# VPC Terraform Module

## overview
A reusable, production-ready Terraform module to provision a custom Virtual Private Cloud (VPC) in AWS.
This module creates a fully configurable VPC with public/private subnets, route tables, and optional NAT Gateway support.

## 🚀 Features
- Create custom VPC with CIDR block
- Create multiple public and private subnets across availability zones
- Automatically create:
- Internet Gateway
- Public Route Table
- Private Route Table
- ptional NAT Gateway support (single or per-AZ)
- Outputs for easy integration with EC2, RDS, ALB, EKS, and more
- Clean, reusable, and scalable module structure

## 🛠 Usage Example
```
provider "aws" {
  region = "eu-north-1"
}

module "vpc" {
  source = "./module/vpc"
  vpc_config = {
    cidr_block = "10.0.0.0/16"
    name       = "your_vpc_name"
  }
  subnet_config = {
    public_subnet = {
      cidr_block        = "10.0.0.0/24"
      availability_zone = "eu-north-1a"
      # To set the subnet public, default is private
      public            = true
    }
    
    private_subnet = {
      cidr_block        = "10.0.2.0/24"
      availability_zone = "eu-north-1c"
    }
  }
}


```