provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformbuckettoday12345" {
  bucket = "terraformbuckettoday12345"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformbuckettoday12345"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}