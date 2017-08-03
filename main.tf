variable "packet_api_key" {}
variable "packet_project_name" {}

terraform {
  required_version = ">= 0.9.11"
}

provider "packet" {
    auth_token = "${var.packet_api_key}"
}

module "packet_server" {
    source = "./modules/packet.net/"
    project_name = "${var.packet_project_name}"
}

output "project_name" { value = "${var.packet_project_name}" }
output "project_id" { value = "${module.packet_server.project_id}" }
output "project_payment_method" { value = "${module.packet_server.project_payment_method}" }
output "project_created" { value = "${module.packet_server.project_created}" }
output "project_updated" { value = "${module.packet_server.project_updated}" }

output "key_phil_id" { value = "${module.packet_server.key_phil_id}" }
output "key_phil_name" { value = "${module.packet_server.key_phil_name}" }
output "key_phil_public_key" { value = "${module.packet_server.key_phil_public_key}" }
output "key_phil_fingerprint" { value = "${module.packet_server.key_phil_fingerprint}" }
output "key_phil_created" { value = "${module.packet_server.key_phil_created}" }
output "key_phil_updated" { value = "${module.packet_server.key_phil_updated}" }
