# Azure AD Groups Read module

A module for listing Azure AD group info in bulk, sorted by object ID or name.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| azuread_group_names | Group names to look up (set of string) | string | N/A | yes |

## Outputs

| Name | Description |
|------|-------------|
| groups_raw | The raw groups output returned as returned by the azurerm provider |
| groups_list | All groups as a list (by index) |
| groups_by_id | All groups in a map, sorted by each group's object ID |
| groups_by_name | All groups in a map, sorted by each group's name |
