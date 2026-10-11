resource "newrelic_fleet_members" "fleet_members" {
  for_each = var.fleet_members

  fleet_id = each.value.fleet_id

  dynamic "ring" {
    for_each = each.value.ring
    content {
      entity_ids = ring.value.entity_ids
      name       = ring.value.name
    }
  }
}

