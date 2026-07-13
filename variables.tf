variable "machine_learning_synapse_sparks" {
  description = <<EOT
Map of machine_learning_synapse_sparks, attributes below
Required:
    - location
    - machine_learning_workspace_id
    - name
    - synapse_spark_pool_id
Optional:
    - description
    - local_auth_enabled
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location                      = string
    machine_learning_workspace_id = string
    name                          = string
    synapse_spark_pool_id         = string
    description                   = optional(string)
    local_auth_enabled            = optional(bool)
    tags                          = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_synapse_sparks : (
        can(regex("^[a-zA-Z][a-zA-Z0-9-]{2,16}$", v.name))
      )
    ])
    error_message = "It can include letters, digits and dashes. It must start with a letter, end with a letter or digit, and be between 2 and 16 characters in length."
  }
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_synapse_sparks : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

