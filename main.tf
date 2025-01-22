provider "aws" {
  region = "us-east-1"
}

 resource "aws_s3_bucket" "bucket" {
      bucket = "my-bucket-${terraform.workspace}"
      acl    = "private"
    }

module "s3_bucket" {
  source     = "./modules/s3_bucket"
  bucket_name = "bucketjafetxideral"
  tags = {
    Name = "example bucket from terraform"
  }
}

module "s3_objects" {
  source = "./modules/s3_objects"
  bucket = aws_s3_bucket.example_bucket.bucket
  index_key = "index.html"
  index_source = "C:/Users/DELL/Desktop/sitioweb/index.html"
  style_key = "styles/style.css"
  style_source = "C:/Users/DELL/Desktop/sitioweb/style.css"
  function_key = "scripts/function.js"
  function_source = "C:/Users/DELL/Desktop/sitioweb/function.js"
}

