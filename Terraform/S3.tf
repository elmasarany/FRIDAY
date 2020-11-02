resource "aws_kms_key" "fkey" {
  description             = "KMS keyto encrypt objects"
  deletion_window_in_days = 7
   tags = {
    Name = "kms-fkeys"
  }
}

resource "aws_s3_bucket" "friday_bucketes" {
  count         = "${length(var.s3_bucket_name)}"
  bucket        = "${element(var.s3_bucket_name, count.index)}"
  acl    = "private"
  force_destroy = "true"
  
  lifecycle_rule {
    enabled = true

    noncurrent_version_transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    noncurrent_version_transition {
      days          = 60
      storage_class = "GLACIER"
    }

    noncurrent_version_expiration {
      days = 90
    }
  }
  versioning{
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        #kms_master_key_id = aws_kms_key.fkey.arn
        #sse_algorithm     = "aws:kms"
        sse_algorithm = "AES256"
      }
    }
  }
}
