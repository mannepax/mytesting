 terraform {
  backend "s3" {
    bucket = "haridevs3"
    key    = "haridev.tfstate"
    region = "us-east-1"
  }
}