output "consumer_group_filter" {
  description = "The filter used by the consumer group. Only messages matching the filter will be available by consumers of the consumer group. An empty value means that all messages will be available in the group. The primary consumer group cannot have any filter."
  value       = oci_queue_consumer_group.this.consumer_group_filter
}

output "dead_letter_queue_delivery_count" {
  description = "The number of times a message can be delivered to a consumer before being moved to the dead letter queue.  A value of 0 indicates that the DLQ is not used. If the value isn't set, it will be using the value defined at the queue level."
  value       = oci_queue_consumer_group.this.dead_letter_queue_delivery_count
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  value       = oci_queue_consumer_group.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name for the consumer group. It has to be unique within the same queue in a case-insensitive manner. It's changeable. Avoid entering confidential information."
  value       = oci_queue_consumer_group.this.display_name
}

output "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  value       = oci_queue_consumer_group.this.freeform_tags
}

output "id" {
  description = "A unique identifier for the consumer group that is immutable on creation."
  value       = oci_queue_consumer_group.this.id
}

output "lifecycle_details" {
  description = "Any additional details about the current state of the consumer group."
  value       = oci_queue_consumer_group.this.lifecycle_details
}

output "queue_id" {
  description = "The OCID of the associated queue."
  value       = oci_queue_consumer_group.this.queue_id
}

output "state" {
  description = "The current state of the consumer group."
  value       = oci_queue_consumer_group.this.state
}

output "system_tags" {
  description = "Usage of system tag keys. These predefined keys are scoped to namespaces. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_queue_consumer_group.this.system_tags
}

output "time_created" {
  description = "The time that the consumer group was created, expressed in RFC 3339 timestamp format."
  value       = oci_queue_consumer_group.this.time_created
}

output "time_updated" {
  description = "The time that the consumer group was updated, expressed in RFC 3339 timestamp format."
  value       = oci_queue_consumer_group.this.time_updated
}
