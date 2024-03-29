variable "number_instances" {
  description = "How many instances of this type"
  type        = number
}

variable "docker_compose_version" {
  description = "docker compose version"
  type        = string
}

variable "docker_network_name" {
  description = "docker network name"
  type        = string
}

variable "total_geth" {
  description = "How many geth instances"
  type        = number
}

variable "total_dclocal" {
  description = "How many dc local logging instances"
  type        = number
}

variable "total_globalfederation" {
  description = "How many global federation instances"
  type        = number
}

variable "instance_image" {
  description = "What OS image to use for the instances"
  type        = string
}

variable "instance_regions_global" {
  description = "What regions to launch the instances, NB will be distributed across the regions for global"
  type        = list(string)
}

variable "instance_regions_group1" {
  description = "What regions to launch the instances, NB will be distributed across the regions for group 1"
  type        = list(string)
}

variable "instance_regions_group2" {
  description = "What regions to launch the instances, NB will be distributed across the regions for group 2"
  type        = list(string)
}

variable "instance_type" {
  description = "What type of instances to launch, determines resources like RAM"
  type        = string
}

variable "instance_ubuntu_password" {
  description = "What password that will be set for ubuntu user on this instances"
  type        = string
}

variable "access_ssh_keys_array" {
  description = "What ssh keys to be authorized for user ubuntu access on all linodes"
  type        = list(string)
}

variable "instance_label" {
  description = "What is the label name for this instances"
  type        = string
}

# Group for all linodes deployed using this terraform for differentiation
variable "instance_group" {
  description = "Group for all linodes deployed using this terraform for differentiation"
  type        = string
}

# Manage running state of instance
variable "booted_status" {
  description = "Manage running state of instance"
  type        = string
}

variable "class_groups" {
  description = "Groups classifications of different sides"
  type        = list(string)
}

variable "stackscript_id" {
  description = "Start script to use when provisioning linode"
  type        = string
}

variable "clientname" {
  description = "Client name"
  type        = string
}

variable "testname" {
  description = "Testname"
  type        = string
}

variable "testnet" {
  description = "Testnet"
  type        = string
}
