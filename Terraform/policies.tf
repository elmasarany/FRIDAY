
resource "aws_s3_bucket_policy" "bucket_policy" {
  
  bucket        = aws_s3_bucket.friday_bucketes[0].id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::536547015275:user/terraform"
      },
      "Action": [ "s3:*" ],
      "Resource": [
        "${aws_s3_bucket.friday_bucketes[0].arn}",
        "${aws_s3_bucket.friday_bucketes[0].arn}/*"
      ]
    }
  ]
}
EOF
}


resource "aws_s3_bucket_policy" "bucket_policy_daily" {
  bucket        = aws_s3_bucket.friday_bucketes[1].id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::536547015275:user/ahmd"
      },
      "Action": [
        "s3:PutObjectAcl",
        "s3:ReplicateDelete",
        "s3:RestoreObject" ],
      "Resource": [
        "${aws_s3_bucket.friday_bucketes[1].arn}",
        "${aws_s3_bucket.friday_bucketes[1].arn}/*"
      ]
    }
  ]
}
EOF
}
