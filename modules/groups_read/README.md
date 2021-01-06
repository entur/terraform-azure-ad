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
