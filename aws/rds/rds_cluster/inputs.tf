variable master_username {}
variable master_password {}

variable bucket_name {
  default = ""
}

variable bucket_prefix {
  default = ""
}

variable create {
  default = "120m"
}

variable update {
  default = "120m"
}

variable delete {
  default = "120m"
}

variable engine {
  default = "aurora"
}

variable preferred_maintenance_window {
  default = "Mon:00:00-Mon:03:00"
}

variable backtrack_window {
  default = 0
}

variable backup_retention_period {
  default = 1
}

variable s3_imports {
  default = false
}

variable storage_encrypted {
  default = false
}

variable apply_immediately {
  default = false
}

variable skip_final_snapshot {
  default = false
}

variable deletion_protection {
  default = false
}

variable copy_tags_to_snapshot {
  default = false
}

variable port {
  default = 3306
}

variable tags {
  default = {}

  type = "map"
}

variable iam_roles {
  default = []

  type = "list"
}

variable s3_import {
  default = []

  type = "list"
}

variable kms_key_id {
  default = ""
}

variable source_region {
  default = ""
}

variable database_name {
  default = ""
}

variable engine_version {
  default = ""
}

variable availability_zones {
  default = []

  type = "list"
}

variable cluster_identifier {
  default = ""
}

variable snapshot_identifier {
  default = ""
}

variable db_subnet_group_name {
  default = ""
}

variable vpc_security_group_ids {
  default = []

  type = "list"
}

variable preferred_backup_window {
  default = ""
}

variable final_snapshot_identifier {
  default = "final"
}

variable replication_source_identifier {
  default = ""
}

variable db_cluster_parameter_group_name {
  default = ""
}

variable iam_database_authentication_enabled {
  default = ""
}
