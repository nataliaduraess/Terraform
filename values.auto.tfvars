region                 = "us-central1"
zone                   = "us-central1-c"
location               = "us-central1"
environment            = "production"
prefix                 = "data-plataform"
project                = "natalia-terraform-course"
project_id             = "natalia-terraform-course"
storage_class_standard = "STANDARD"
storage_class_nearline = "NEARLINE"
storage_class_coldline = "COLDLINE"
storage_class_archive  = "ARCHIVE"
bucket_names           = ["raw-layer", "processing-layer", "curated-layer"]
members = ["serviceAccount:terraform-user@natalia-terraform-course.iam.gserviceaccount.com",
           "user:nataliauserterraform@gmail.com"]
credentials                  = "natalia-terraform-user.json"
name_vm                      = "natalia-vm"
machine_type                 = "e2-medium"