output "user_name" {
  value       = snowflake_user.user.name
  description = "Name of the user."
}

output "user_comment" {
  value       = snowflake_user.user.comment
  description = "User's comment"
}

output "user_default_role" {
  value       = snowflake_user.user.default_role
  description = "User's default role."
}

output "user_default_warehouse" {
  value       = snowflake_user.user.default_warehouse
  description = "User's default warehouse"
}

output "user_disabled" {
  value       = snowflake_user.user.disabled
  description = "Prevent connection to Snowflake if true."
}

output "user_email" {
  value       = snowflake_user.user.email
  description = "User's email."
}

output "user_display_name" {
  value       = snowflake_user.user.display_name
  description = "User's display name at the console."
}
output "user_first_name" {
  value       = snowflake_user.user.first_name
  description = "User's first name."
}

output "user_last_name" {
  value       = snowflake_user.user.last_name
  description = "User'last name."
}

output "user_must_change_password" {
  value       = snowflake_user.user.must_change_password
  description = "If true, the user will have to change it's password at the next connection."
}

output "user_password" {
  value       = snowflake_user.user.password
  description = "User's password."
}

output "user_rsa_public_key" {
  value       = snowflake_user.user.rsa_public_key
  description = "User's first public rsa's key."
}

output "user_rsa_public_key_2" {
  value       = snowflake_user.user.rsa_public_key_2
  description = "User's second public key."
}
