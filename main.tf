resource "snowflake_user" "user" {
  name              = var.name
  login_name        = var.login_name
  comment           = var.comment
  password          = var.password
  disabled          = var.disabled
  display_name      = var.display_name
  email             = var.email
  first_name        = var.first_name
  last_name         = var.last_name
  default_namespace = var.default_namespace

  default_warehouse = var.default_warehouse
  default_role      = var.default_role

  rsa_public_key   = var.rsa_public_key
  rsa_public_key_2 = var.rsa_public_key_2

  must_change_password = var.must_change_password
}


resource "snowflake_role_grants" "grants" {
  for_each  = var.functional_roles
  role_name = each.key

  users = [snowflake_user.user.name]
}
