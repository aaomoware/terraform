#--- object lifecycle
resource "aws_s3_bucket" "l" {
  count               = "${var.lifecycle && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  bucket              = "${var.bucket}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  tags = "${var.tags}"

  lifecycle_rule {
    id         = "${var.id}"
    tags       = "${var.lifecycle_tags}"
    prefix     = "${var.prefix}"
    enabled    = "${var.enabled}"
    transition = "${var.transitions}"
    expiration = "${var.expirations}"
  }
}


#--- object lifecycle, with versioning
resource "aws_s3_bucket" "lv" {
  count               = "${var.lifecycle && var.versioning ? 1 : 0}"

  acl                 = "${var.acl}"
  bucket              = "${var.bucket}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  tags = "${var.tags}"

  versioning {
    enabled = "${var.enabled}"
  }

  lifecycle_rule {
    tags       = "${var.lifecycle_tags}"
    prefix     = "${var.prefix}"
    enabled    = "${var.enabled}"
    noncurrent_version_transition = "${var.noncurrent_version_expiration}"
  }
}