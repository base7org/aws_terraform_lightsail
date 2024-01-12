# Main Variables
variable "site_region" {
  description = "The region to use."
  type        = string
  default     = "us-east-1"
}

variable "site_name" {
  description = "The region to use."
  type        = string
  default     = "base7"
}

# Domain Information

variable "site_domain" {
  description = "The domain name to be set up."
  type        = string
  default     = "base7.org"
}

variable "site_subdomain" {
  description = "The subdomain name to be set up."
  type        = string
  default     = "fun"
}

# Instance Information

variable "site_blueprint" {
  description = "The size of the instance to use for the environment."
  type        = string
  default     = "nodejs"
}

variable "site_bundle" {
  description = "The size of the instance to use for the environment."
  type        = string
  default     = "nano_2_0"
}

variable "keypair" {
  description = "The size of the instance to use for the environment."
  type        = string
  default     = "base7-keypair"
}