variable "bucket_name" {}

resource "aws_s3_bucket" "backups" {
  bucket = "${var.bucket_name}"
  acl    = "private"

  versioning {
    enabled = true
  }
}
