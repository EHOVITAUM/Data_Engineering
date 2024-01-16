resource "google_storage_bucket" "teste_terraform_bucket" {
  name     = "sei_la_testes_terradorm"
  location = "US"
}

resource "google_storage_bucket_object" "object_example" {
  name   = "arquivo_exemplo.pdf"
  bucket = google_storage_bucket.teste_terraform_bucket.name
  source = "C:/Users/83027/Desktop/livro14.pdf"
}

resource "google_storage_object_access_control" "public_" {
  bucket = google_storage_bucket.teste_terraform_bucket.name
  object = google_storage_bucket_object.object_example.name
  role   = "READER"
  entity = "allUsers"
}



# resource "google_storage_bucket" "teste_terraform_bucket" {
#     name = "sei_la_testes_terradorm"
#     location = "US"  
# }

# resource "google_storage_object_access_control" "public_" {
#     object = google_storage_bucket_object.teste_terraform_bucket.name
#     bucket = google_storage_bucket.teste_terraform_bucket.name
#     role = "READER"
#     entity = "allUsers"
  
# }







# provider "google" {
#   credentials = file("C:/Users/83027/Documents.json")
#   project     = "ambient-sum-404005"
#   region      = "us-central1"  # Substitua pela região desejada
# }

# resource "google_storage_bucket" "my_bucket" {
#   name          = "unique-bucket-name"  # Substitua pelo nome desejado para o bucket
#   location      = "US"  # Substitua pela localização desejada
#   force_destroy = true   # Removerá o bucket mesmo que não esteja vazio

#   versioning {
#     enabled = true
#   }

#   uniform_bucket_level_access = true
# }
