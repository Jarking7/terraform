resource "aws_s3_object" "index" {
  bucket = var.bucket
  key    = var.index_key
  source = var.index_source
  content_type = "text/html"
}

resource "aws_s3_object" "style" {
  bucket = var.bucket
  key    = var.style_key
  source = var.style_source
  content_type = "text/css"
}

resource "aws_s3_object" "function" {
  bucket = var.bucket
  key    = var.function_key
  source = var.function_source
  content_type = "application/javascript"
}
