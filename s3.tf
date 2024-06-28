resource "aws_s3_bucket" "my-unique-ngozi-bucket-name2" {
  bucket = "my-unique-ngozi-bucket-name2"
}


resource "aws_s3_bucket_public_access_block" "access" {
  bucket = aws_s3_bucket.my-unique-ngozi-bucket-name2.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.my-unique-ngozi-bucket-name2.id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}

data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      aws_s3_bucket.my-unique-ngozi-bucket-name2.arn,
      "${aws_s3_bucket.my-unique-ngozi-bucket-name2.arn}/*",
    ]
  }
}


resource "aws_s3_object" "files_upload" {
  for_each = fileset("./modules/s3_bucket/minifinance/", "**/*.*")
  bucket      = "my-unique-ngozi-bucket-name2"
  key         = each.value
  source      = "./modules/s3_bucket/minifinance/${each.value}"
  source_hash = filemd5("./modules/s3_bucket/minifinance/${each.value}")
  content_type = "text/html"
}


resource "aws_s3_bucket_website_configuration" "ngozi_bucket_website" {
  bucket = aws_s3_bucket.my-unique-ngozi-bucket-name2.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}