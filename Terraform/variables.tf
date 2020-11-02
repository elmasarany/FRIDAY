
variable "AWS_REGION"  {}

variable "s3_bucket_name" {
  type    = "list"
  default = ["crazy-berlin-weather-hourly", "crazy-berlinweather-daily", "crazy-berlin-weather-weekly"]
}