variable "bucket" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "index_key" {
  type        = string
  description = "The key for the index.html file"
}

variable "index_source" {
  type        = string
  description = "The local path to the index.html file"
}

variable "style_key" {
  type        = string
  description = "The key for the style.css file"
}

variable "style_source" {
  type        = string
  description = "The local path to the style.css file"
}

variable "function_key" {
  type        = string
  description = "The key for the function.js file"
}

variable "function_source" {
  type        = string
  description = "The local path to the function.js file"
}
