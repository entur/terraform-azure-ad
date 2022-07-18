# Azure AD Groups Read module

A module for listing Azure AD group info in bulk, ordered by object ID or name.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| azuread_group_names | Group names to look up | List/set of strings | N/A | yes |

## Outputs

| Name | Description |
|------|-------------|
| groups_raw | The raw groups output as returned by the azurerm provider |
| groups_list | All groups as a list (indexed) |
| groups_by_id | All groups in a map, ordered by each group's object ID |
| groups_by_name | All groups in a map, ordered by each group's name |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_groups.all](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/groups) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azuread_group_names"></a> [azuread\_group\_names](#input\_azuread\_group\_names) | Group names to look up | `set(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_groups_by_id"></a> [groups\_by\_id](#output\_groups\_by\_id) | n/a |
| <a name="output_groups_by_name"></a> [groups\_by\_name](#output\_groups\_by\_name) | n/a |
| <a name="output_groups_list"></a> [groups\_list](#output\_groups\_list) | n/a |
| <a name="output_groups_raw"></a> [groups\_raw](#output\_groups\_raw) | n/a |
<!-- END_TF_DOCS -->