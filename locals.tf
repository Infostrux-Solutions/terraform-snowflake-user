locals {
  # Constants

  spec = yamldecode(file(var.spec_file_path))

  default_user_spec = {
    name                    = ""
    comment                 = ""
    default_namespace       = ""
    default_role            = ""
    default_secondary_roles = []
    default_warehouse       = ""
    disabled                = false
    display_name            = ""
    email                   = ""
    first_name              = ""
    last_name               = ""
    login_name              = ""
    must_change_password    = true
    password                = ""
    rsa_public_key          = ""
    rsa_public_key_2        = ""
  }

  users = {
    for user, spec in local.spec["users"] : user => merge(local.default_user_spec, spec)
  }
}
