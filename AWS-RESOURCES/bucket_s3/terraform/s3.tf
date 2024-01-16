resource "aws_s3_bucket" "aqui-eh-um-label" {
    bucket = "bucket-test-terraform-sei-la"

    tags = {
        name = var.project_name
        enviroment = var.enviroment 
    }
}

