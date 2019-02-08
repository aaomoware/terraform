resource "aws_mq_configuration" "mq_conf" {

  name           = "${var.name}"
  data           = "${var.data}"
  description    = "${var.description}"
  engine_type    = "${var.engine_type}"
  engine_version = "${var.engine_version}"
}
