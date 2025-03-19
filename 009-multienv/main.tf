terraform {
  backend "s3" {
    bucket         = "mybucket16297"
    key            = "env/${var.env}/mybucket"
    region         = "us-east-1"

  }
}

variable "env" {


}