variable "consumer_group_filter" {
  description = "(Optional) (Updatable) The filter used by the consumer group. Only messages matching the filter will be available by consumers of the group. The primary consumer group cannot have any filter."
  type        = string
  default     = null
}

variable "dead_letter_queue_delivery_count" {
  description = "(Optional) (Updatable) The number of times a message can be delivered to a consumer before being moved to the dead letter queue.  A value of 0 indicates that the DLQ is not used. If the value isn't specified, it will be using the value defined at the queue level."
  type        = number
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) The user-friendly name of the consumer group."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "is_enabled" {
  description = "(Optional) (Updatable) Used to enable or disable the consumer group.  An enabled consumer group will have a lifecycle state of ACTIVE, while a disabled will have its state as INACTIVE."
  type        = bool
  default     = null
}

variable "queue_id" {
  description = "(Required) The OCID of the associated queue."
  type        = string
}
