# Snowflake User Terraform Module

Manage Snowflake users using Terraform.

This module exposes all of the available configuration for a Snowflake user and passes them to the Snowflake provider resource. You can also supply functional roles to assign to the user during creation.

## Usage

```hcl
module "user" {
  source  = "Infostrux-Solutions/user/snowflake"
  version = "0.3.0"
  providers = {
    snowflake = snowflake.useradmin
  }

  depends_on = [snowflake_warehouse.warehouses]

  name                 = Alice
  login_name           = Alice
  display_name         = Alice
  first_name           = Alice
  last_name            = Smith
  comment              = "A Data Engineer at Awesome Company"
  default_role         = "SYSADMIN"
  default_namespace    = "database_name.schema_name"
  default_warehouse    = snowflake_warehouse.small.name
  disabled             = false
  email                = alice@awesomecompany.com
  must_change_password = true
  functional_roles = [
    "ACCOUNTADMIN",
    "SYSADMIN",
  ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >= 0.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | >= 0.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_database_grant.database_read_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/database_grant) | resource |
| [snowflake_database_grant.database_write_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/database_grant) | resource |
| [snowflake_role_grants.role_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/role_grants) | resource |
| [snowflake_role_grants.user_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/role_grants) | resource |
| [snowflake_schema_grant.schema_read_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/schema_grant) | resource |
| [snowflake_schema_grant.schema_write_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/schema_grant) | resource |
| [snowflake_table_grant.table_read_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/table_grant) | resource |
| [snowflake_table_grant.table_write_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/table_grant) | resource |
| [snowflake_warehouse_grant.warehouse_grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/warehouse_grant) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_spec_file_path"></a> [spec\_file\_path](#input\_spec\_file\_path) | The path to the RBAC specification file. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Authors
Module is maintained by [Infostrux Solutions](mailto:opensource@infostrux.com) with help from [these awesome contributors](https://github.com/Infostrux-Solutions/terraform-snowflake-user/graphs/contributors).

## License
Apache 2 Licensed. See [LICENSE](https://github.com/Infostrux-Solutions/terraform-snowflake-user/blob/main/LICENSE) for full details.
