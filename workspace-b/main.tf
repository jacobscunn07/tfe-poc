provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "workspace-b"
  acl    = "private"

  tags = {
    Name        = "My bucket for"
    Environment = "Dev"
  }
}
