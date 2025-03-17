component "networking" {
  source = "./"
  providers = {
    tfcoremock = provider.tfcoremock.this
  }
  inputs = {
  }
}

stack "extremely_long_stack_name" {
  source = "./child"

  inputs = {
    some_very_extremely_long_variable_name = stack.extremely_long_stack_name.some_very_extremely_long_output_name
  }
}
