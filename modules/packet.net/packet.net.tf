variable "project_name" {}

resource "packet_project" "phil" {
  name = "${var.project_name}"
#  payment_method = "test"          # Only required for a non-default payment method
}

resource "packet_ssh_key" "key_phil" {
  name       = "pgporada"
  public_key = "${file("${path.module}/../../ssh_keys/packet_pgporada.pub")}"
}

output "project_id" {
  value = "${packet_project.phil.id}"
}

#output "project_payment_method" {
#  value = "${packet_project.phil.payment_method}"
#}

output "project_created" {
  value = "${packet_project.phil.created}"
}

output "project_updated" {
  value = "${packet_project.phil.updated}"
}

output "key_phil_id" {
  value = "${packet_ssh_key.key_phil.id}"
}

output "key_phil_name" {
  value = "${packet_ssh_key.key_phil.name}"
}

output "key_phil_public_key" {
  value = "${packet_ssh_key.key_phil.public_key}"
}

output "key_phil_fingerprint" {
  value = "${packet_ssh_key.key_phil.fingerprint}"
}

output "key_phil_created" {
  value = "${packet_ssh_key.key_phil.created}"
}

output "key_phil_updated" {
  value = "${packet_ssh_key.key_phil.updated}"
}
