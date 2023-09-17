# Aws-s3-multi-region-access-point
<!-- BEGIN_TF_DOCS -->

# Introduction
AWS Multi-Region Access Points - a transformative solution that redefines the way organizations store, access, and protect their data in an increasingly interconnected world. In this comprehensive guide, we embark on a voyage of discovery into the realm of Multi-Region Access Points (MRAPs), unveiling their significance, exploring their multifaceted capabilities, and equipping you with the knowledge to harness their potential.

Picture a scenario where your critical data effortlessly traverses geographic boundaries, serving users, applications, and services seamlessly, all while adhering to data sovereignty regulations and ensuring high availability. This is the promise of MRAPs - an architectural marvel that simplifies global data access, bolsters disaster recovery strategies, and optimizes content delivery across continents.

![replication](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/6fa0d9df-2708-47e4-b9e3-802f056771e5)

![replcation-2](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/21505683-29bb-4ba7-9c1d-41e4c97a67cf)


___
## Terraform Execution Steps To Create Multi Region Access Point
* Clone the git repo.
* Go To aws-s3-multi-region-access-point Directory. 
* Update the variable into tfvars file as per your environment/requirement. 
![code-tree](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/55537ac7-0eef-439c-ad43-b8928e7d178c)

* To initialize a working directory containing Terraform configuration files:

<pre><code>terraform init</pre></code>
![terraform-init](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/21dedb1a-836e-418c-9296-ec3f71973529)


* To validate the Terraform configuration

<pre><code>terraform validate</pre></code>
![image](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/fed353d4-cee9-4dd4-9c3d-89cf50cacaff)


* To format your Terraform code 

<pre><code>terraform fmt --recursive</pre></code>

* To create an execution plan, which lets you preview the changes to your Aws account:

<pre><code>terraform plan</pre></code>
![image](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/10b92c2f-7ebe-4a70-bc31-84e0f33035b8)


<pre><code>terraform apply --auto-approve</pre></code>
  ![image](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/878c4304-2a14-4696-bb01-b25b9a223fc0)

## Provisioned Resource From Terraform Code
* 2 Aws S3 buckets serving the purpose of primary (source) and secondary bucket (destination) with defined ACL, versioning.
  ![image](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/b1e19d75-46e6-401c-96ec-864b581bec7b)
  ![image](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/f90ca640-4d5b-415f-b39c-afeb1fa0927b)

* A bucket replication policy is set on the primary bucket to copy data to the secondary bucket.
  ![image](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/57e94621-a6a5-4881-808e-d7953a28237b)

* A Multi-Region Access Point
  ![image](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/b2670a85-a345-4610-9b61-8b4d13afd411)
 

* One Failover Configuration for both buckets as active-active routing status.
  ![image](https://github.com/Ashishkasaudhan/aws-s3-multi-region-access-point/assets/12654660/cac92819-fd06-4665-8ef5-588519774a1c)



## Reference links 
* https://aws.amazon.com/s3/features/multi-region-access-points/
* https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_multi_region_access_point
* https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication-add-config.html

## Requirements

| Name                                                                          | Version |
|-------------------------------------------------------------------------------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws)                       | ~> 5.0  |
| <a name="requirement_terraform"></a> [terraform](#requirement\_aws)           | ~> 1.6  |
| <a name="requirement_awscli"></a> [awscli with aws authentication](#requirement\_aws)                 | latest  |
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
___
<!-- END_TF_DOCS -->
