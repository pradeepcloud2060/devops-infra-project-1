terraform {
  backend "s3" {
    bucket = "dev-proj-terraform-infra-remote-state-bucket"
    key    = "devops-project-terraform-infra/terraform.tfstate"
    region = "eu-central-1"
  }
}