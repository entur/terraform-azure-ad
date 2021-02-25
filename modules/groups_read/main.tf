locals {
  ad_groups_list = flatten([
    for adg_name_i, adg_name in data.azuread_groups.all.names : {
      name = adg_name
      id   = data.azuread_groups.all.object_ids[adg_name_i]
    }
  ])

  ad_groups_map_id = {
    for obj in local.ad_groups_list : "${obj.id}" => obj
  }

  ad_groups_map_name = {
    for obj in local.ad_groups_list : "${obj.name}" => obj
  }
}

data "azuread_groups" "all" {
  display_names = toset(var.azuread_group_names)
}