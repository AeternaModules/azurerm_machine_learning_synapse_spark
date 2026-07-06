output "machine_learning_synapse_sparks" {
  description = "All machine_learning_synapse_spark resources"
  value       = azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks
}
output "machine_learning_synapse_sparks_description" {
  description = "List of description values across all machine_learning_synapse_sparks"
  value       = [for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : v.description]
}
output "machine_learning_synapse_sparks_identity" {
  description = "List of identity values across all machine_learning_synapse_sparks"
  value       = [for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : v.identity]
}
output "machine_learning_synapse_sparks_local_auth_enabled" {
  description = "List of local_auth_enabled values across all machine_learning_synapse_sparks"
  value       = [for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : v.local_auth_enabled]
}
output "machine_learning_synapse_sparks_location" {
  description = "List of location values across all machine_learning_synapse_sparks"
  value       = [for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : v.location]
}
output "machine_learning_synapse_sparks_machine_learning_workspace_id" {
  description = "List of machine_learning_workspace_id values across all machine_learning_synapse_sparks"
  value       = [for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : v.machine_learning_workspace_id]
}
output "machine_learning_synapse_sparks_name" {
  description = "List of name values across all machine_learning_synapse_sparks"
  value       = [for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : v.name]
}
output "machine_learning_synapse_sparks_synapse_spark_pool_id" {
  description = "List of synapse_spark_pool_id values across all machine_learning_synapse_sparks"
  value       = [for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : v.synapse_spark_pool_id]
}
output "machine_learning_synapse_sparks_tags" {
  description = "List of tags values across all machine_learning_synapse_sparks"
  value       = [for k, v in azurerm_machine_learning_synapse_spark.machine_learning_synapse_sparks : v.tags]
}

