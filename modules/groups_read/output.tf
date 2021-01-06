output "groups_raw" {
  value = data.azuread_groups.all
}

output "groups_list" {
  value = local.ad_groups_list
}

output "groups_by_id" {
  value = local.ad_groups_map_id
}

output "groups_by_name" {
  value = local.ad_groups_map_name
}