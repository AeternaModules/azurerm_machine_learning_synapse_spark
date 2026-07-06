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
    local_auth_enabled            = optional(bool) # Default: true
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
  # --- Unconfirmed validation candidates, derived from azurerm_machine_learning_synapse_spark's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: machine_learning_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: machine_learning_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: synapse_spark_pool_id
  #   source:    [from synapseValidate.SparkPoolID] !ok
  # path: synapse_spark_pool_id
  #   source:    [from synapseValidate.SparkPoolID] err != nil
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

