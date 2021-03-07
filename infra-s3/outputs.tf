output "this_s3_bucket_name" {
  description = "The name of the bucket."
  value = aws_s3_bucket.s3_bucket.id
}

output "this_s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value = aws_s3_bucket.s3_bucket.arn
}

output "this_s3_bucket_domain" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value = aws_s3_bucket.s3_bucket.bucket_domain_name
}

output "this_s3_bucket_regional_domain" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer [here](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  value = aws_s3_bucket.s3_bucket.bucket_regional_domain_name
}

output "this_s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value = aws_s3_bucket.s3_bucket.region
}

