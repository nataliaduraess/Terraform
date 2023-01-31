module "buckets" {
  source                 = "./datalake"
  region                 = "us-central1"
  zone                   = "us-central1-c"
  location               = "us-central1"
  environment            = "production"
  prefix                 = "natalia"
  project                = var.project
  project_id             = "natalia-terraform-course"
  storage_class_standard = "STANDARD"
  storage_class_nearline = "NEARLINE"
  storage_class_coldline = "COLDLINE"
  storage_class_archive  = "ARCHIVE"
  bucket_names           = ["raw", "processing", "curated"]
  members = ["serviceAccount:terraform-user@natalia-terraform-course.iam.gserviceaccount.com",
           "user:nataliauserterraform@gmail.com"]
}