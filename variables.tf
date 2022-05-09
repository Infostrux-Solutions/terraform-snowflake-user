variable "name" {
  type        = string
  description = "Name of the user. Note that if you do not supply login_name this will be used as login_name."
}

variable "login_name" {
  type        = string
  description = "The name users use to log in. If not supplied, snowflake will use name instead."
  default     = null
}
variable "comment" {
  type        = string
  description = "Specifies a comment for the user."
  default     = "Created by Terraform."
}

variable "default_namespace" {
  type        = string
  description = "Specifies the namespace (database only or database and schema) that is active by default for the user's session upon login."
  default     = null
}

variable "default_role" {
  type        = string
  description = "Specifies the role that is active by default for the user's session upon login."
  default     = null
}

variable "default_warehouse" {
  type        = string
  description = "Specifies the virtual warehouse that is active by default for the user's session upon login."
  default     = null
}

variable "disabled" {
  type        = bool
  description = "Disabling a user prevents the user from logging into Snowflake."
  default     = false
}

variable "email" {
  type        = string
  description = "Email address for the user."
  default     = null
}

variable "display_name" {
  type        = string
  description = "Name displayed for the user in the Snowflake web interface."
  default     = null
}

variable "first_name" {
  type        = string
  description = "First name of the user."
  default     = null
}
variable "last_name" {
  type        = string
  description = "Last name of the user."
  default     = null
}

variable "must_change_password" {
  type        = bool
  description = "Specifies whether the user is forced to change their password on next login (including their first/initial login) into the system."
  default     = null
}

variable "password" {
  type        = string
  description = "WARNING: this will put the password in the terraform state file. Use carefully."
  default     = null
}

variable "rsa_public_key" {
  type        = string
  description = "(String) Specifies the user's RSA public key; used for key-pair authentication. Must be on 1 line without header and trailer."
  default     = null
}

variable "rsa_public_key_2" {
  type        = string
  description = "(String) Specifies the user's second RSA public key; used to rotate the public and private keys for key-pair authentication based on an expiration schedule set by your organization. Must be on 1 line without header and trailer."
  default     = null
}

variable "functional_roles" {
  type        = set(string)
  description = "Roles that the user will be granted access to."
  default     = []
}
