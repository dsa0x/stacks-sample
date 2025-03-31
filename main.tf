
terraform {

  required_providers {

    tfcoremock = {
      source = "hashicorp/tfcoremock"
    }
  }
}

resource "tfcoremock_simple_resource" "example" {
  id      = "my-simple-resource"
  bool    = true
}

variable "name" {
  default = "John"
}

variable "testing" {
  type        = string
  description = "Testing"
  
  validation {
    condition     = var.testing != "notvalid"
    error_message = "The testing variable cannot be 'notvalid'."
  }
  
}

output "message" {
  value = "Hello, ${var.name}"  
}

output "testing" {
  value = var.testing
}