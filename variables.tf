variable "deploy_repo" {
  type        = "string"
  default     = "https://github.com/akerl/deploy-wireguard-server"
  description = "Repo to use for Ansible code"
}

variable "ssh_keys" {
  type        = "list"
  description = "SSH public keys used to log in as root to the server"
}
