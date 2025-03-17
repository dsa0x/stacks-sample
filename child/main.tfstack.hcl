# component "networking" {
#   source = "./"
#   providers = {
#     tfcoremock = provider.tfcoremock.this
#   }
#   inputs = {
#   }
# }

# required_providers {
#   tfcoremock = {
#     source  = "hashicorp/tfcoremock"
#     version = "0.4.0"
#   }
# }

# provider "tfcoremock" "this" {
  
# }

variable "some_very_extremely_long_variable_name" {
  type = string
}

output "some_very_extremely_long_output_name" {
  type  = string
  value = var.some_very_extremely_long_variable_name
}   