identity_token "aws" {
  audience = ["aws.workload.identity"]
}

identity_token "hcp" {
  audience = ["hcp.workload.identity"]
}

deployment "notvalid" {
  inputs = {
  }
}