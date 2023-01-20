terraform {
  backend "s3" {
    # Edit the bucket name and region
    bucket         = "data-platform-natalia-terraform-backend"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"

    # Edit the bucket name and region
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}