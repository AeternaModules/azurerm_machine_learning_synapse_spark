output "machine_learning_synapse_sparks_id" {
  description = "Map of id values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "machine_learning_synapse_sparks_description" {
  description = "Map of description values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "machine_learning_synapse_sparks_identity" {
  description = "Map of identity values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "machine_learning_synapse_sparks_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.local_auth_enabled if v.local_auth_enabled != null }
}
output "machine_learning_synapse_sparks_location" {
  description = "Map of location values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.location if v.location != null && length(v.location) > 0 }
}
output "machine_learning_synapse_sparks_machine_learning_workspace_id" {
  description = "Map of machine_learning_workspace_id values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.machine_learning_workspace_id if v.machine_learning_workspace_id != null && length(v.machine_learning_workspace_id) > 0 }
}
output "machine_learning_synapse_sparks_name" {
  description = "Map of name values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "machine_learning_synapse_sparks_synapse_spark_pool_id" {
  description = "Map of synapse_spark_pool_id values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.synapse_spark_pool_id if v.synapse_spark_pool_id != null && length(v.synapse_spark_pool_id) > 0 }
}
output "machine_learning_synapse_sparks_tags" {
  description = "Map of tags values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

