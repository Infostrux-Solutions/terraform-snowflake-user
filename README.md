# Snowflake User Terraform Module

Terraform module which creates user resources on Snowflake.

## Examples
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | 0.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_role_grants.grants](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/role_grants) | resource |
| [snowflake_user.user](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | Specifies a comment for the user. | `string` | `"Created by Terraform."` | no |
| <a name="input_default_namespace"></a> [default\_namespace](#input\_default\_namespace) | Specifies the namespace (database only or database and schema) that is active by default for the user's session upon login. | `string` | `null` | no |
| <a name="input_default_role"></a> [default\_role](#input\_default\_role) | Specifies the role that is active by default for the user's session upon login. | `string` | `null` | no |
| <a name="input_default_warehouse"></a> [default\_warehouse](#input\_default\_warehouse) | Specifies the virtual warehouse that is active by default for the user's session upon login. | `string` | `null` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | Disabling a user prevents the user from logging into Snowflake. | `bool` | `false` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Name displayed for the user in the Snowflake web interface. | `string` | `null` | no |
| <a name="input_email"></a> [email](#input\_email) | Email address for the user. | `string` | `null` | no |
| <a name="input_first_name"></a> [first\_name](#input\_first\_name) | First name of the user. | `string` | `null` | no |
| <a name="input_functional_roles"></a> [functional\_roles](#input\_functional\_roles) | Roles that the user will be granted access to. | `set(string)` | `[]` | no |
| <a name="input_last_name"></a> [last\_name](#input\_last\_name) | Last name of the user. | `string` | `null` | no |
| <a name="input_login_name"></a> [login\_name](#input\_login\_name) | The name users use to log in. If not supplied, snowflake will use name instead. | `string` | `null` | no |
| <a name="input_must_change_password"></a> [must\_change\_password](#input\_must\_change\_password) | Specifies whether the user is forced to change their password on next login (including their first/initial login) into the system. | `bool` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the user. Note that if you do not supply login\_name this will be used as login\_name. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | WARNING: this will put the password in the terraform state file. Use carefully. | `string` | `null` | no |
| <a name="input_rsa_public_key"></a> [rsa\_public\_key](#input\_rsa\_public\_key) | (String) Specifies the user's RSA public key; used for key-pair authentication. Must be on 1 line without header and trailer. | `string` | `null` | no |
| <a name="input_rsa_public_key_2"></a> [rsa\_public\_key\_2](#input\_rsa\_public\_key\_2) | (String) Specifies the user's second RSA public key; used to rotate the public and private keys for key-pair authentication based on an expiration schedule set by your organization. Must be on 1 line without header and trailer. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_comment"></a> [user\_comment](#output\_user\_comment) | User's comment |
| <a name="output_user_default_role"></a> [user\_default\_role](#output\_user\_default\_role) | User's default role. |
| <a name="output_user_default_warehouse"></a> [user\_default\_warehouse](#output\_user\_default\_warehouse) | User's default warehouse |
| <a name="output_user_disabled"></a> [user\_disabled](#output\_user\_disabled) | Prevent connection to Snowflake if true. |
| <a name="output_user_display_name"></a> [user\_display\_name](#output\_user\_display\_name) | User's display name at the console. |
| <a name="output_user_email"></a> [user\_email](#output\_user\_email) | User's email. |
| <a name="output_user_first_name"></a> [user\_first\_name](#output\_user\_first\_name) | User's first name. |
| <a name="output_user_last_name"></a> [user\_last\_name](#output\_user\_last\_name) | User'last name. |
| <a name="output_user_must_change_password"></a> [user\_must\_change\_password](#output\_user\_must\_change\_password) | If true, the user will have to change it's password at the next connection. |
| <a name="output_user_name"></a> [user\_name](#output\_user\_name) | Name of the user. |
| <a name="output_user_password"></a> [user\_password](#output\_user\_password) | User's password. |
| <a name="output_user_rsa_public_key"></a> [user\_rsa\_public\_key](#output\_user\_rsa\_public\_key) | User's first public rsa's key. |
| <a name="output_user_rsa_public_key_2"></a> [user\_rsa\_public\_key\_2](#output\_user\_rsa\_public\_key\_2) | User's second public key. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module is maintained by [Charles-Etienne Couture](https://github.com/charlesInfostrux) with help from [Infostrux](https://github.com/orgs/Infostrux-Solutions/people).
