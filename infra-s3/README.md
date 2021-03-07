
## Example Usage:
```
module "s3_bucket" {
  source = "github.com/arjundandagi/friday"

  bucket_name = "crazy-berlin-weather"
  frequency_of_objects = "hourly"
  acl    = "private"
  need_versioning = true
  region = "us-east-1"

}
```
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.13 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| acl | The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. Defaults to private | `string` | `"private"` | no |
| bucket\_name | Name of the bucket :  example-crazy-berlin-weather | `string` | n/a | yes |
| frequency\_of\_objects | Frequency of the objects put into this bucket, can be one of hourly,daily,weekly | `string` | n/a | yes |
| lifecycle\_rule | List of maps containing configuration of object lifecycle management. | `any` | `[]` | no |
| need\_versioning | whether versioning needs to be enabled | `bool` | `false` | no |
| policy | the map containing policy object for s3 bucket | `any` | `null` | no |
| region | The Region to create the s3 bucket in | `string` | `"us-east-1"` | no |
| server\_side\_encryption\_configuration | Map containing server-side encryption configuration. visit https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#attributes-reference for details | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_s3\_bucket\_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| this\_s3\_bucket\_domain | The bucket domain name. Will be of format bucketname.s3.amazonaws.com. |
| this\_s3\_bucket\_name | The name of the bucket. |
| this\_s3\_bucket\_region | The AWS region this bucket resides in. |
| this\_s3\_bucket\_regional\_domain | The bucket region-specific domain name. The bucket domain name including the region name, please refer [here](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL. |

