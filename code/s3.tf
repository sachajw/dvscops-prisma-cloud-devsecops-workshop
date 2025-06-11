provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "14b83367-5dae-4f6d-a026-e48fab80be43"
    git_commit           = "79a44486f10f18b8d29dfa7a25a57b145cc56193"
    git_file             = "code/s3.tf"
    git_last_modified_at = "2025-06-11 17:01:09"
    git_last_modified_by = "32266273+sachajw@users.noreply.github.com"
    git_modifiers        = "32266273+sachajw"
    git_org              = "sachajw"
    git_repo             = "dvscops-prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
