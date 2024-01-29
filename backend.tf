# terraform {
#   backend "s3" {
#     bucket = "vivek-terraform-backend"
#     key    = "network/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

terraform {
  backend "s3" {
    bucket = "vivek-s3-backend-demo"
    key    = "backend/terrafrom.tfstate"
    region = "us-west-2"
    # skip_credentials_validation = true
    profile = "sandbox"
    dynamodb_table = "vivek-terraform-state-locking"
}
}