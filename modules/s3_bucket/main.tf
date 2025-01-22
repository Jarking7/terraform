resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name

  tags = var.tags
}

resource "aws_s3_bucket_public_access_block" "example_block" {
  bucket = aws_s3_bucket.example_bucket.id

  block_public_acls = false
  block_public_policy = false
}

resource "aws_s3_bucket_website_configuration" "example_website" {
  bucket = aws_s3_bucket.example_bucket.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
