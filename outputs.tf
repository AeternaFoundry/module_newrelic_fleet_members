output "fleet_members_id" {
  description = "Map of id values across all fleet_members, keyed the same as var.fleet_members except keys with no id are omitted"
  value       = { for k, v in newrelic_fleet_members.fleet_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_members_fleet_id" {
  description = "Map of fleet_id values across all fleet_members, keyed the same as var.fleet_members except keys with no fleet_id are omitted"
  value       = { for k, v in newrelic_fleet_members.fleet_members : k => v.fleet_id if v.fleet_id != null && length(v.fleet_id) > 0 }
}
output "fleet_members_ring" {
  description = "Map of ring values across all fleet_members, keyed the same as var.fleet_members except keys with no ring are omitted"
  value       = { for k, v in newrelic_fleet_members.fleet_members : k => v.ring if v.ring != null && length(v.ring) > 0 }
}

