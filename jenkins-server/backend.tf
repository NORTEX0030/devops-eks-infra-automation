terraform {
  backend "s3" {
    bucket = "my-aws-todo-app-bucket"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-2"
  }
}
