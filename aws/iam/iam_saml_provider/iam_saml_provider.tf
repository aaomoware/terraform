resource "aws_iam_saml_provider" "sp" {
  name                   = "${var.name}"
  saml_metadata_document = "${var.saml_metadata_document}"
}
