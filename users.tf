resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "snowflake_user" "users" {
  for_each                = local.users
  name                    = each.value.name
  comment                 = each.value.comment
  default_namespace       = each.value.default_namespace
  default_role            = each.value.default_role
  default_secondary_roles = each.value.default_secondary_roles
  default_warehouse       = each.value.default_warehouse
  disabled                = each.value.disabled
  display_name            = each.value.display_name
  email                   = each.value.email
  first_name              = each.value.first_name
  last_name               = each.value.last_name
  login_name              = each.value.login_name
  must_change_password    = true
  password                = random_password.password.result
  rsa_public_key          = each.value.rsa_public_key
  rsa_public_key_2        = each.value.rsa_public_key_2
}
