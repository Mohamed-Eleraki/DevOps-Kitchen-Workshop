# Configure aws provider
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }

    backend "s3" {
    bucket = "erakiterrafromstatefiles"
    key    = "s3.tfstate"
    region = "us-east-1"
    profile = "eraki"
    }
}

# Configure aws provider
provider "aws" {
    region = "us-east-1"
    profile = "eraki"  # replace this with your profile name, If you're using the default one remove this line.
}



# Create S3 Bucket
resource "aws_s3_bucket" "s3_01" {
  bucket = "eraki-s3-dev-01"

  force_destroy       = true # force destroy even if the bucket not empty

  tags = {
    Name        = "eraki-s3-dev-01-Tag"
    Environment = "terraformChamps"
    Owner       = "eraki"
  }
}

# Disable ACL and enforce ownership
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.s3_01.bucket

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

# Create a "logs" directory in the S3 bucket
resource "aws_s3_object" "logs_directory" {
  bucket = aws_s3_bucket.s3_01.bucket
  key    = "logs/"
}