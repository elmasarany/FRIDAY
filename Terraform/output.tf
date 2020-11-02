output "arn-0" {
  description = "The ARN of the bucket0. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.friday_bucketes[0].arn
}
output "arn-1" {
  description = "The ARN of the bucket1. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.friday_bucketes[1].arn
}
output "arn-2" {
  description = "The ARN of the bucket2. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.friday_bucketes[2].arn
 
}

output "id-0" {
  description = "The name of the bucket0."
  value       = aws_s3_bucket.friday_bucketes[0].id
}
output "id-1" {
  description = "The name of the bucket1."
  value       = aws_s3_bucket.friday_bucketes[1].id
}
output "id-2" {
  description = "The name of the bucket2."
  value       = aws_s3_bucket.friday_bucketes[2].id
}