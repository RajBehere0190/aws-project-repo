provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c7217cdde317cfec"   # Amazon Linux 2 AMI (for us-east-1) ✅
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  tags = {
    Name = "EC2-${var.environment}"
  }
}

resource "aws_s3_bucket" "static_website_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = var.environment
  }
}

resource "aws_s3_bucket_website_configuration" "website_config" {
  bucket = aws_s3_bucket.static_website_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
