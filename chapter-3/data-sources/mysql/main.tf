provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "example"{
    identifier_prefix = "terraform-up-and-running"
    engine = "mysql"
    allocated_storage = 5
    instance_class = "db.t2.micro"
    name = "example_database"
    username = "admin"

    password = var.db_password
}

# data "aws_secretsmanager_secret_version" "db_password" {
#     secret_id = "mysql-master-password-stage"
# }

terraform {
    backend "s3" {
        bucket = "aws-sher-learning-terraform"
        key = "global/s3/terraform.tfstate"
        region = "us-east-2"

        dynamodb_table = "tf-learning-bucket-locks"
        encrypt = true
    }
}