output "fleet_members_id" {
  description = "Map of id values across all fleet_members, keyed the same as var.fleet_members"
  value       = { for k, v in newrelic_fleet_members.fleet_members : k => v.id }
}
output "fleet_members_fleet_id" {
  description = "Map of fleet_id values across all fleet_members, keyed the same as var.fleet_members"
  value       = { for k, v in newrelic_fleet_members.fleet_members : k => v.fleet_id }
}
output "fleet_members_ring" {
  description = "Map of ring values across all fleet_members, keyed the same as var.fleet_members"
  value       = { for k, v in newrelic_fleet_members.fleet_members : k => v.ring }
}

