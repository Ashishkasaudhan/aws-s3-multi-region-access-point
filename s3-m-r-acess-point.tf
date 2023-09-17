resource "aws_s3control_multi_region_access_point" "example" {
  details {
    name = var.access_point_name

    region {
      bucket = aws_s3_bucket.primary.id
    }

    region {
      bucket = aws_s3_bucket.secondary.id
    }
  }
}

resource "aws_s3control_multi_region_access_point_policy" "example" {
  details {
    name = element(split(":", aws_s3control_multi_region_access_point.example.id), 1)
    policy = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Sid" : "Example",
          "Effect" : "Allow",
          "Principal" : {
            "AWS" : data.aws_caller_identity.current.account_id
          },
          "Action" : ["s3:GetObject", "s3:PutObject"],
          "Resource" : "arn:${data.aws_partition.current.partition}:s3::${data.aws_caller_identity.current.account_id}:accesspoint/${aws_s3control_multi_region_access_point.example.alias}/object/*"
        }
      ]
    })
  }
}