# Auto-remediate
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "webserver" {
  ami           = "ami-01e36b7901e884a10"
  instance_type = "t2.micro"

  tags = {
    Name = "webserver"
  }
}

resource "aws_s3_bucket" "accuricsbucketdemo" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name = "bucketdemo"
  }
}

resource aws_s3_bucket_versioning example {
  bucket = aws_s3_bucket.my-tf-test-bucket.bucket

  versioning_configuration {
    status = Enabled
  }
}