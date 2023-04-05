provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAVCLA2LLO7OI6ADK5"
  secret_key = "XVtuTZNA5YqnJ+ibV0OPfDxFP9xqAt4W+YUVT2M8"
}

resource "aws_ssm_document" "example_document" {
name = "example_document"
document_type = "Command"

content = <<DOC
{
"schemaVersion": "2.2",
"description": "Example SSM document",
"mainSteps": [
{
"action": "aws:runShellScript",
"name": "example_step",
"inputs": {
"runCommand": [
"ls -lrt"
]
}
}
]
}
DOC
}
