terraform {
  backend "gcs" {
    bucket = "quantacobucket"
    prefix = "terraform/global"
  }
}
