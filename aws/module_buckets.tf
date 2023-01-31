module "buckets" {
  
  source = "./dir_module_buckets"

  bucket_names = ["natalia-terraform13","natalia-terraform14","natalia-terraform15","natalia-terraform16"]
  project_name = "data-platform"
  db_password = "Stack2023!"
  db_username = "admin"
  environment = "prod"

}