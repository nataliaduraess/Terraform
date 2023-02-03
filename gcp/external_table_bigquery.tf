####### Terraform - Integracao com GCP ####

########## BigQuery ##########

###### CRIAR DATASET ##### 
resource "google_bigquery_dataset" "dataset_natalia" {
  dataset_id    = "data_plataform_natalia"
  friendly_name = "data_plataform_natalia"
  description   = "Data Plataform - natalia data processing SFTP"
  location      = var.location
  project = var.project
}

#### TABLE NATALIA - TABLE EXTERNA ####
resource "google_bigquery_table" "table_stack_01" {
  dataset_id  = google_bigquery_dataset.dataset_natalia.dataset_id
  table_id    = "data_plataform_natalia_processed"
  description = "Tabela com dados processado SFTP"
  project = var.project

  external_data_configuration {
    autodetect    = true
    source_format = "CSV"

    source_uris = [
      "gs://terraform-course-natalia-curated-layer-production/fhvhv_tripdata_2022-04.parquet"
    ]
  }
}