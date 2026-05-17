output "capabilities" {
  description = "The list of capabilities enabled on the queue"
  value       = oci_queue_queue.this.capabilities
}

output "channel_consumption_limit" {
  description = "The percentage of allocated queue resources that can be consumed by a single channel. For example, if a queue has a storage limit of 2Gb, and a single channel consumption limit is 0.1 (10%), that means data size of a single channel  can't exceed 200Mb. Consumption limit of 100% (default) means that a single channel can consume up-to all allocated queue's resources."
  value       = oci_queue_queue.this.channel_consumption_limit
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the queue."
  value       = oci_queue_queue.this.compartment_id
}

output "custom_encryption_key_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the custom encryption key to be used to encrypt messages content."
  value       = oci_queue_queue.this.custom_encryption_key_id
}

output "dead_letter_queue_delivery_count" {
  description = "The number of times a message can be delivered to a consumer before being moved to the dead letter queue. A value of 0 indicates that the DLQ is not used."
  value       = oci_queue_queue.this.dead_letter_queue_delivery_count
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  value       = oci_queue_queue.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name for the queue. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_queue_queue.this.display_name
}

output "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  value       = oci_queue_queue.this.freeform_tags
}

output "id" {
  description = "A unique identifier for the queue that is immutable on creation."
  value       = oci_queue_queue.this.id
}

output "lifecycle_details" {
  description = "Any additional details about the current state of the queue."
  value       = oci_queue_queue.this.lifecycle_details
}

output "messages_endpoint" {
  description = "The endpoint to use to consume or publish messages in the queue."
  value       = oci_queue_queue.this.messages_endpoint
}

output "retention_in_seconds" {
  description = "The retention period of the messages in the queue, in seconds."
  value       = oci_queue_queue.this.retention_in_seconds
}

output "state" {
  description = "The current state of the queue."
  value       = oci_queue_queue.this.state
}

output "system_tags" {
  description = "Usage of system tag keys. These predefined keys are scoped to namespaces. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_queue_queue.this.system_tags
}

output "time_created" {
  description = "The time that the queue was created, expressed in RFC 3339 timestamp format."
  value       = oci_queue_queue.this.time_created
}

output "time_updated" {
  description = "The time that the queue was updated, expressed in RFC 3339 timestamp format."
  value       = oci_queue_queue.this.time_updated
}

output "timeout_in_seconds" {
  description = "The default polling timeout of the messages in the queue, in seconds."
  value       = oci_queue_queue.this.timeout_in_seconds
}

output "visibility_in_seconds" {
  description = "The default visibility timeout of the messages consumed from the queue, in seconds."
  value       = oci_queue_queue.this.visibility_in_seconds
}
