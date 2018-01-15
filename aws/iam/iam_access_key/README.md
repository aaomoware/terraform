#### IAM Access Key


###### Variables
```
variable user     { default = [] type = "list" }
variable gpg_key  { default = {} type = "list" }
```

##### Outputs
```
output "ak_id" {
  value = "${aws_iam_access_key.ak.*.id}"
}
output "ak_user" {
  value = "${aws_iam_access_key.ak.*.user}"
}
output "ak_secret_key" {
  value = "${aws_iam_access_key.ak.*.secret}"
}
output "ak_key_fingerprint" {
  value = "${aws_iam_access_key.ak.*.key_fingerprint}"
}
output "ak_secret_encrypted_secret" {
  value = "${aws_iam_access_key.ak.*.encrypted_secret}"
}
output "ak_secret_ses_smtp_password" {
  value = "${aws_iam_access_key.ak.*.ses_smtp_password}"
}
```

###### Documentation
[ aws_iam_access_key](https://www.terraform.io/docs/providers/aws/r/iam_access_key.html)