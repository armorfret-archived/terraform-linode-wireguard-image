terraform-linode-wireguard-image
=========

[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

Terraform module that creates a [Linode](https://linode.com) Image pre-baked with updates and [this Ansible repo](https://github.com/akerl/deploy-wireguard-server/) for deploying [Wireguard](https://www.wireguard.com).

## Usage

```
module "wireguard_image" {
  source  = "github.com/akerl/terraform-linode-wireguard-base"
}
```

## License

terraform-linode-wireguard-base is released under the MIT License. See the bundled LICENSE file for details.
