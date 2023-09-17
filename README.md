# Aws-s3-multi-region-access-point
<!-- BEGIN_TF_DOCS -->

# Introduction
AWS Multi-Region Access Points - a transformative solution that redefines the way organizations store, access, and protect their data in an increasingly interconnected world. In this comprehensive guide, we embark on a voyage of discovery into the realm of Multi-Region Access Points (MRAPs), unveiling their significance, exploring their multifaceted capabilities, and equipping you with the knowledge to harness their potential.

Picture a scenario where your critical data effortlessly traverses geographic boundaries, serving users, applications, and services seamlessly, all while adhering to data sovereignty regulations and ensuring high availability. This is the promise of MRAPs - an architectural marvel that simplifies global data access, bolsters disaster recovery strategies, and optimizes content delivery across continents.

![mare-bucket](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/990be432-d50b-40a8-91ef-7588508a67d3)

![bucket](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/1c97453d-015f-402d-8e9a-094c7105f134)

![replication](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/6fa0d9df-2708-47e4-b9e3-802f056771e5)

![replcation-2](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/21505683-29bb-4ba7-9c1d-41e4c97a67cf)

## Requirements

| Name                                                                          | Version |
|-------------------------------------------------------------------------------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws)                       | ~> 5.0  |
| <a name="requirement_terraform"></a> [terraform](#requirement\_aws)           | ~> 1.6  |
| <a name="requirement_awscli"></a> [awscli](#requirement\_aws)                 | latest  |
| <a name="requirement_terraform-docs"></a> [terraform-docs](#requirement\_aws) | v0.16.0 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |
| <a name="provider_aws.primary_region"></a> [aws.primary\_region](#provider\_aws.primary\_region) | ~> 5.0 |
| <a name="provider_aws.secondary_region"></a> [aws.secondary\_region](#provider\_aws.secondary\_region) | ~> 5.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_s3_bucket.primary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket.secondary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.primary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_acl.secondary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_ownership_controls.primary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_ownership_controls.secondary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_replication_configuration.replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_replication_configuration) | resource |
| [aws_s3_bucket_versioning.primary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3_bucket_versioning.secondary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3control_multi_region_access_point.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_multi_region_access_point) | resource |
| [aws_s3control_multi_region_access_point_policy.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_multi_region_access_point_policy) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_point_name"></a> [access\_point\_name](#input\_access\_point\_name) | Name for multi\_region\_access\_point | `string` | `"example-mrap"` | no |
| <a name="input_primary_bucket_name"></a> [primary\_bucket\_name](#input\_primary\_bucket\_name) | primary bucket name to be created for multi\_region\_access\_point | `string` | `"example1"` | no |
| <a name="input_secondary_bucket_name"></a> [secondary\_bucket\_name](#input\_secondary\_bucket\_name) | secondary bucket name to be created for multi\_region\_access\_point | `string` | `"example2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_multi_access_point_alias"></a> [multi\_access\_point\_alias](#output\_multi\_access\_point\_alias) | alias of multi\_region\_access\_point |
| <a name="output_multi_access_point_arn"></a> [multi\_access\_point\_arn](#output\_multi\_access\_point\_arn) | arn of multi\_region\_access\_point |
| <a name="output_multi_access_point_domain_name"></a> [multi\_access\_point\_domain\_name](#output\_multi\_access\_point\_domain\_name) | domain\_name of multi\_region\_access\_point |
| <a name="output_multi_access_point_status"></a> [multi\_access\_point\_status](#output\_multi\_access\_point\_status) | Status of multi\_region\_access\_point |

## Reference links 
* https://aws.amazon.com/s3/features/multi-region-access-points/
* https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_multi_region_access_point


<!-- END_TF_DOCS -->
