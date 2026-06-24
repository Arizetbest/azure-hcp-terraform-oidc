variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space assigned to the virtual network"
  type        = list(string)

  validation {
    condition     = length(var.vnet_address_space) > 0
    error_message = "At least one virtual network address range must be provided."
  }
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes assigned to the subnet"
  type        = list(string)

  validation {
    condition     = length(var.subnet_address_prefixes) > 0
    error_message = "At least one subnet address prefix must be provided."
  }
}

variable "vm_name" {
  description = "Name of the Linux virtual machine"
  type        = string
}

variable "vm_size" {
  description = "Azure virtual machine size"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Administrator username for the virtual machine"
  type        = string
  default     = "azureuser"
}

variable "public_key" {
  description = "SSH public key content used to access the virtual machine"
  type        = string

  validation {
    condition = (
      startswith(var.public_key, "ssh-rsa") ||
      startswith(var.public_key, "ssh-ed25519")
    )
    error_message = "The public_key value must contain a valid SSH public key."
  }
}

variable "allowed_ssh_cidr" {
  description = "Public CIDR range allowed to connect to SSH"
  type        = string

  validation {
    condition     = can(cidrhost(var.allowed_ssh_cidr, 0))
    error_message = "allowed_ssh_cidr must be a valid CIDR range."
  }
}
