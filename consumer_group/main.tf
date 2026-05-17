resource "oci_queue_consumer_group" "this" {
  display_name                     = var.display_name
  queue_id                         = var.queue_id
  consumer_group_filter            = var.consumer_group_filter
  dead_letter_queue_delivery_count = var.dead_letter_queue_delivery_count
  defined_tags                     = var.defined_tags
  freeform_tags                    = var.freeform_tags
  is_enabled                       = var.is_enabled
}
