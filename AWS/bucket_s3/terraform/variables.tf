variable "region" {
    type = string
    description = "regiao de desenvolvimento "
    default = "ap-south-1"
}

variable "project_name" {
    type = string
    description = "nome do projeto "
    default = "bucket-test-terraform-sei-la"
}

variable "enviroment" {
    type = string
    description = "ambiente do projeto"
    default = "data squad"
}