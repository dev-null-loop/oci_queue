variable "capabilities" {
  description = "(Optional) (Updatable) The capability to add on the queue"
  type = list(object({
    is_primary_consumer_group_enabled                       = optional(bool)
    primary_consumer_group_dead_letter_queue_delivery_count = optional(number)
    primary_consumer_group_display_name                     = optional(string)
    primary_consumer_group_filter                           = optional(string)
    type                                                    = string
  }))
  default = []
}

variable "channel_consumption_limit" {
  description = "(Optional) (Updatable) The percentage of allocated queue resources that can be consumed by a single channel. For example, if a queue has a storage limit of 2Gb, and a single channel consumption limit is 0.1 (10%), that means data size of a single channel  can't exceed 200Mb. Consumption limit of 100% (default) means that a single channel can consume up-to all allocated queue's resources."
  type        = number
  default     = null
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the queue."
  type        = string
}

variable "custom_encryption_key_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the custom encryption key to be used to encrypt messages content."
  type        = string
  default     = null
}

variable "dead_letter_queue_delivery_count" {
  description = "(Optional) (Updatable) The number of times a message can be delivered to a consumer before being moved to the dead letter queue. A value of 0 indicates that the DLQ is not used."
  type        = number
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) The user-friendly name of the queue."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "purge_trigger" {
  description = "(Optional) (Updatable) An optional property when incremented triggers Purge. Could be set to any integer value."
  type        = number
  default     = null
}

variable "purge_type" {
  description = "(Optional) (Updatable) An optional value that specifies the purge behavior for the Queue. Could be set to NORMAL, DLQ or BOTH. If unset, the default value is NORMAL"
  type        = string
  default     = null
}

variable "retention_in_seconds" {
  description = "(Optional) The retention period of messages in the queue, in seconds."
  type        = number
  default     = null
}

variable "timeout_in_seconds" {
  description = "(Optional) (Updatable) The default polling timeout of the messages in the queue, in seconds."
  type        = number
  default     = null
}

variable "visibility_in_seconds" {
  description = "(Optional) (Updatable) The default visibility timeout of the messages consumed from the queue, in seconds."
  type        = number
  default     = null
}
