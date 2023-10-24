terraform {
  backend "s3" {
    bucket = "staging-states"
    key    = "staging/vpc-staging.tfstate"
    region = "us-east-1"
  }
}