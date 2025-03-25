provider "aws" {
  region                   = "eu-central-1"
  shared_credentials_files = ["/c/Users/prade/.aws/credentials"]
  profile = "dev-profile"
}