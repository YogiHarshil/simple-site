resource "aws_s3_bucket" "app_logs" {
  bucket = "${var.app_name}-logs-${random_id.bucket_id.hex}"
  force_destroy = true

  tags = {
    Environment = "dev"
    Project     = var.app_name
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}