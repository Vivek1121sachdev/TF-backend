# terraform {
#   backend "s3" {
#     bucket = "vivek-terraform-backend"
#     key    = "network/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

terraform {
  backend "s3" {
    bucket = "vivek-terraform-backend"
    key    = "backend/terrafrom.tfstate"
    region = "us-east-1"
    # skip_credentials_validation = true
    profile = "tf-user"
}
}