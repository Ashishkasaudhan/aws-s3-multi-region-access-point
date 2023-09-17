###### Create S3 Bucket in primary region ####

resource "aws_s3_bucket" "primary" {
  provider = aws.primary_region
  bucket   = var.primary_bucket_name
}

resource "aws_s3_bucket_ownership_controls" "primary" {
  bucket   = aws_s3_bucket.primary.id
  provider = aws.primary_region
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "primary" {
  depends_on = [aws_s3_bucket_ownership_controls.primary]
  bucket     = aws_s3_bucket.primary.id
  provider   = aws.primary_region
  acl        = "private"
}

resource "aws_s3_bucket_versioning" "primary" {
  bucket = aws_s3_bucket.primary.id
  versioning_configuration {
    status = "Enabled"
  }
  provider = aws.primary_region
}




###### Create S3 Bucket in  secondary region ####
resource "aws_s3_bucket" "secondary" {
  provider = aws.secondary_region
  bucket   = var.secondary_bucket_name
}

resource "aws_s3_bucket_ownership_controls" "secondary" {
  bucket   = aws_s3_bucket.secondary.id
  provider = aws.secondary_region
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "secondary" {
  depends_on = [aws_s3_bucket_ownership_controls.secondary]
  bucket     = aws_s3_bucket.secondary.id
  provider   = aws.secondary_region
  acl        = "private"
}

resource "aws_s3_bucket_versioning" "secondary" {
  bucket = aws_s3_bucket.secondary.id
  versioning_configuration {
    status = "Enabled"
  }
  provider = aws.secondary_region
}

