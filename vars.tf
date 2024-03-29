# access token to linode account
variable "token" {
  description = "access token to linode account"
  type        = string
}

# docker compose version
variable "docker_compose_version" {
  description = "docker compose version"
  type        = string
  default = "v2.15.1"
}

# docker network name
variable "docker_network_name" {
  description = "docker network name"
  type        = string
  default = "monitoring_network"
}

# ubuntu password to be set on linodes
variable "instance_ubuntu_password" {
  description = "ubuntu password to be set on linodes"
  type        = string
}

# Group for all linodes deployed using this terraform for differentiation
variable "instance_group" {
  description = "Group for all linodes deployed using this terraform for differentiation"
  type        = string
}

# Github usernames to get ssh keys to be allowed ssh access to servers
variable "github_usernames" {
  description = "Github usernames to get ssh keys to be allowed ssh access to servers"
  type        = list(string)
}

# el servers
variable "geth" {
  description = "el servers"
  type        = map(string)
}

# globalfederation servers
variable "globalfederation" {
  description = "globalfederation servers"
  type        = map(string)
}

# Regions to distribute linodes to global shared : Removed us-west as they dont have NVME Block storage
variable "dc_regions_global" {
  description = "Regions to distribute linodes to global shared"
  type        = list(string)
  default     = ["us-east", "eu-west", "ap-west", "ca-central", "ap-southeast", "us-central", "us-southeast", "ap-south", "eu-central", "ap-northeast"]
}

# Regions to distribute linodes to group 1
variable "dc_regions_group1" {
  description = "Regions to distribute linodes to group 1"
  type        = list(string)
  default     = ["us-east", "eu-west", "ap-west", "ca-central", "ap-southeast"]
}

# Regions to distribute linodes to group 2
variable "dc_regions_group2" {
  description = "Regions to distribute linodes to group 2"
  type        = list(string)
  default     = ["us-central", "us-southeast", "ap-south", "eu-central", "ap-northeast"]
}

# Groups classifications of different sides
variable "class_groups" {
  description = "Groups classifications of different sides"
  type        = list(string)
  default     = ["group1", "group2"]
}

# testnet instances/machines to create, different configurations
variable "testnet_instance_types" {
  description = "testnet instances/machines to create, different configurations"
  type        = map(any)
}

# parallel tests
variable "parallel_tests" {
  description = "parallel tests"
  type        = map(any)
}