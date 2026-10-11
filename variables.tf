variable "fleet_members" {
  description = <<EOT
Map of fleet_members, attributes below
Required:
    - fleet_id
    - ring (block):
        - entity_ids (required)
        - name (required)
EOT

  type = map(object({
    fleet_id = string
    ring = list(object({
      entity_ids = list(string)
      name       = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fleet_members : (
        length(v.ring) >= 1
      )
    ])
    error_message = "Each ring list must contain at least 1 items"
  }
}

