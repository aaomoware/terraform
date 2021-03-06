# secure
output "secure_access_key" {
  value = "${element(concat(aws_iam_access_key.secure.*.id, list("")),0)}"
}

output "secure_user" {
  value = "${element(concat(aws_iam_access_key.secure.*.user, list("")),0)}"
}

output "secure_secret_encrypted_secret" {
  value = "${element(concat(aws_iam_access_key.secure.*.encrypted_secret, list("")),0)}"
}

output "secure_key_fingerprint" {
  value = "${element(concat(aws_iam_access_key.secure.*.key_fingerprint, list("")),0)}"
}

output "secure_secret_ses_smtp_password" {
  value = "${element(concat(aws_iam_access_key.secure.*.ses_smtp_password, list("")),0)}"
}

# insecure
output "insecure_access_key" {
  value = "${element(concat(aws_iam_access_key.insecure.*.id, list("")),0)}"
}

output "insecure_user" {
  value = "${element(concat(aws_iam_access_key.insecure.*.user, list("")),0)}"
}

output "insecure_secret_key" {
  value = "${element(concat(aws_iam_access_key.insecure.*.secret, list("")),0)}"
}

output "insecure_secret_ses_smtp_password" {
  value = "${element(concat(aws_iam_access_key.insecure.*.ses_smtp_password, list("")),0)}"
}
