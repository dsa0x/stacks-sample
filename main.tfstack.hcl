component "infra" {
  source = "./"
  inputs = {
    name    = "Bar"
    testing = "notvalid"
  }

  providers = {
    tfcoremock = provider.tfcoremock.this
  }
}