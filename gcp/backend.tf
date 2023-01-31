terraform {
  backend "gcs" {
    bucket      = "backend-terraform-course-310123"
    prefix      = "terraform/state"
    credentials = "natalia-terraform-user.json"
  }
}