provider "aws" {
  region  = "us-west-2"
  version = "~> 2.18"
}

resource "aws_cloudwatch_log_group" "lambda" {
  name = "Константин Арефьев"

  retention_in_days = 1
}
