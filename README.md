# Snowflake User Terraform Module

Manage Snowflake users using a simple configuration model.

This module deploys Snowflake users to an account based on a YAML configuration file. Each user is created using a randomly generated password that must be reset on first login.

## Usage

```hcl
module "users" {
  source  = "Infostrux-Solutions/user/snowflake"
  version = "1.0.0"

  providers = {
    snowflake = snowflake.useradmin
  }

  depends_on = [
    snowflake_database.databases,
    snowflake_role.roles,
    snowflake_warehouse.warehouses,
  ]

  spec_file_path = "spec.yml"
}

output "users_password" {
  description = "The randomly generated password for each Snowflake user."
  sensitive   = true
  value       = module.users.users_password
}
```

Once applied, the password can be obtained by viewing the Terraform output explicitly:

```shell
terraform output -json
```

**Example Output**

```shell
{
  "users_password": {
    "sensitive": true,
    "type": "string",
    "value": "xxxxxxxxxxxxxxxx"  <-- This will be the generated password value.
  }
}
```

### Snowflake Role

Snowflake recommends using the **USERADMIN** system role to create and manage users. Though not required, this module should be configured with a provider alias that uses **USERADMIN** to deploy the users.

The following is an example of a working `providers.tf` file which specifies a user-configurable role (default) and the **USERADMIN** aliased role:

```hcl
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.46.0"
    }
  }
}

provider "snowflake" {
  account                = var.snowflake_account
  username               = var.snowflake_username
  private_key_path       = var.snowflake_private_key_path
  private_key_passphrase = var.snowflake_private_key_passphrase
  role                   = var.snowflake_role
}

provider "snowflake" {
  alias                  = "useradmin"
  account                = var.snowflake_account
  username               = var.snowflake_username
  private_key_path       = var.snowflake_private_key_path
  private_key_passphrase = var.snowflake_private_key_passphrase
  role                   = "USERADMIN"
}
```

Then when specifying the module, the useradmin provider alias can be used as the `snowflake` provider:

```hcl
module "users" {
  ...
  providers = {
    snowflake = snowflake.useradmin
  }
  ...
}
```

### Configuring Resources

The YAML specification file defines users and their attributes.

All of the keys defined in the configuration specification are optional, except for `name`.

#### spec.yml

A User specification file has the following structure:

```yaml
users:
  user_name:
    name: user_name
    comment: user_comment
    default_namespace: namespace
    default_role: role_name
    default_warehouse: warehouse_name
    disabled: true/false
    display_name: user_display_name
    email: user_email
    first_name: user_first_name
    last_name: user_last_name
    login_name: user_login_name
    rsa_public_key: user_rsa_public_key
    rsa_public_key_2: user_rsa_public_key_2
  ... ... ...
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | >=0.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_user.users](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_spec_file_path"></a> [spec\_file\_path](#input\_spec\_file\_path) | The path to the user specification file. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Authors
Module is maintained by [Infostrux Solutions](mailto:opensource@infostrux.com) with help from [these awesome contributors](https://github.com/Infostrux-Solutions/terraform-snowflake-user/graphs/contributors).

## License
Apache 2 Licensed. See [LICENSE](https://github.com/Infostrux-Solutions/terraform-snowflake-user/blob/main/LICENSE) for full details.
