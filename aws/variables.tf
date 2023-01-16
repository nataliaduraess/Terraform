variable "environment" {
    default = "prod"
    type = string
    description = "setup the environment"
}

variable "project_name" {
    default = "data-platform"
    description = "Nome do projeto"
}

variable "bucket_names" {
    default = ["raw", "processed", "curated"]
    type = list(string)
}