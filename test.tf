terraform {
  required_version = ">= 0.12"
}

# Define a data object (local value in this case)
data "local_file" "example" {
  filename = "example.txt"
}

output "file_content" {
  value = data.local_file.example.content
}

