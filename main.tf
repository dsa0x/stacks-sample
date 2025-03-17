
terraform {

  required_providers {

    tfcoremock = {
      source = "hashicorp/tfcoremock"
    }
  }
}

# resource "tfcoremock_dynamic_resource" "example" {
#   count = 1
#   my_value = 2
# }

# resource "tfcoremock_dynamic_resource" "exampl3" {
#   for_each = {
#     for k, v in tfcoremock_dynamic_resource.example: k => v.my_value
#   }
#   my_value = each.key
# }

variable "name" {
  default = "John"
}

output "message" {
  value = "Hello, ${var.name}"  
}