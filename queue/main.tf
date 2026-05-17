resource "oci_queue_queue" "this" {
  compartment_id                   = var.compartment_id
  display_name                     = var.display_name
  channel_consumption_limit        = var.channel_consumption_limit
  custom_encryption_key_id         = var.custom_encryption_key_id
  dead_letter_queue_delivery_count = var.dead_letter_queue_delivery_count
  defined_tags                     = var.defined_tags
  freeform_tags                    = var.freeform_tags
  retention_in_seconds             = var.retention_in_seconds
  timeout_in_seconds               = var.timeout_in_seconds
  visibility_in_seconds            = var.visibility_in_seconds
  purge_trigger                    = var.purge_trigger
  purge_type                       = var.purge_type
  dynamic "capabilities" {
    for_each = var.capabilities
    iterator = ca
    content {
      is_primary_consumer_group_enabled                       = ca.value.is_primary_consumer_group_enabled
      primary_consumer_group_dead_letter_queue_delivery_count = ca.value.primary_consumer_group_dead_letter_queue_delivery_count
      primary_consumer_group_display_name                     = ca.value.primary_consumer_group_display_name
      primary_consumer_group_filter                           = ca.value.primary_consumer_group_filter
      type                                                    = ca.value.type
    }
  }
}
