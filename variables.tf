variable "deploy_repo" {
  type        = string
  default     = "https://github.com/akerl/deploy-wireguard-server"
  description = "Repo to use for Ansible code"
}

variable "ssh_keys" {
  type        = list(string)
  description = "SSH public keys used to log in as root to the server"
  default     = []
}

variable "ssh_users" {
  type        = list(string)
  description = "List of authorized users (Linode usernames, must have keys already assigned via Linode API)"
  default     = []
}

