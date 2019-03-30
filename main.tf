resource "random_id" "vm_suffix" {
  byte_length = 8
}

module "vm" {
  source          = "armorfret/wireguard-base/linode"
  version         = "0.0.2"
  name            = "wg-image_${random_id.vm_suffix.hex}"
  region          = "us-east"
  type            = "g6-standard-1"
  algo_repo       = "${var.deploy_repo}"
  source_image_id = "linode/ubuntu18.10"
  ssh_keys        = ["${var.ssh_keys}"]
}

resource "linode_image" "image" {
  linode_id   = "${module.vm.linode_id}"
  disk_id     = "${module.vm.disk_id}"
  label       = "wireguard-image"
  description = "Created by Terraform"
}
