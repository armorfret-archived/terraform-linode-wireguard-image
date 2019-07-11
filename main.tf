resource "random_id" "vm_suffix" {
  byte_length = 8
}

module "vm" {
  source          = "armorfret/wireguard-base/linode"
  version         = "0.0.6"
  name            = "wg-image_${random_id.vm_suffix.hex}"
  region          = "us-east"
  type            = "g6-standard-1"
  deploy_repo     = "${var.deploy_repo}"
  source_image_id = "linode/ubuntu18.04"
  ssh_keys        = var.ssh_keys
  ssh_users       = var.ssh_users
}

resource "linode_image" "image" {
  linode_id   = "${module.vm.linode_id}"
  disk_id     = "${module.vm.disk_id}"
  label       = "wireguard-image"
  description = "Created by Terraform"
}
