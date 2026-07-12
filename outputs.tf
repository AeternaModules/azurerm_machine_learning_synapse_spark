output "machine_learning_synapse_sparks_description" {
  description = "Map of description values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.description }
}
output "machine_learning_synapse_sparks_identity" {
  description = "Map of identity values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.identity }
}
output "machine_learning_synapse_sparks_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.local_auth_enabled }
}
output "machine_learning_synapse_sparks_location" {
  description = "Map of location values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.location }
}
output "machine_learning_synapse_sparks_machine_learning_workspace_id" {
  description = "Map of machine_learning_workspace_id values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.machine_learning_workspace_id }
}
output "machine_learning_synapse_sparks_name" {
  description = "Map of name values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.name }
}
output "machine_learning_synapse_sparks_synapse_spark_pool_id" {
  description = "Map of synapse_spark_pool_id values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.synapse_spark_pool_id }
}
output "machine_learning_synapse_sparks_tags" {
  description = "Map of tags values across all machine_learning_synapse_sparks, keyed the same as var.machine_learning_synapse_sparks"
  value       = { for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : k => v.tags }
}

