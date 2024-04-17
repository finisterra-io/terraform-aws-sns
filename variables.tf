variable "create" {
  description = "Determines whether resources will be created (affects all resources)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

################################################################################
# Topic
################################################################################

variable "name" {
  description = "The name of the SNS topic to create"
  type        = string
  default     = null
}

variable "content_based_deduplication" {
  description = "Boolean indicating whether or not to enable content-based deduplication for FIFO topics."
  type        = bool
  default     = false
}

variable "delivery_policy" {
  description = "The SNS delivery policy"
  type        = string
  default     = null
}

variable "display_name" {
  description = "The display name for the SNS topic"
  type        = string
  default     = null
}

variable "fifo_topic" {
  description = "Boolean indicating whether or not to create a FIFO (first-in-first-out) topic"
  type        = bool
  default     = false
}

variable "kms_master_key_id" {
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK"
  type        = string
  default     = null
}

variable "signature_version" {
  description = "If SignatureVersion should be 1 (SHA1) or 2 (SHA256). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS."
  type        = number
  default     = null
}

variable "tracing_config" {
  description = "Tracing mode of an Amazon SNS topic. Valid values: PassThrough, Active."
  type        = string
  default     = null
}

################################################################################
# Topic Policy
################################################################################
variable "policy" {
  description = "SNS topic policy"
  type        = string
  default     = ""
}

################################################################################
# Subscription(s)
################################################################################
variable "subscriptions" {
  description = "A map of subscription definitions to create"
  type        = any
  default     = {}
}

################################################################################
# Data Protection Policy
################################################################################

variable "data_protection_policy" {
  description = "A map of data protection policy statements"
  type        = string
  default     = null
}











variable "application_failure_feedback_role_arn" {
  description = "The IAM role permitted to receive failure feedback for this topic"
  type        = string
  default     = null
}

variable "application_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
  default     = null
}

variable "application_success_feedback_sample_rate" {
  description = "The percentage of success to sample (0-100)"
  type        = number
  default     = null
}

variable "firehose_failure_feedback_role_arn" {
  description = "The IAM role permitted to receive failure feedback for this topic"
  type        = string
  default     = null
}

variable "firehose_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
  default     = null
}



variable "firehose_success_feedback_sample_rate" {
  description = "The percentage of success to sample (0-100)"
  type        = number
  default     = null
}

variable "http_failure_feedback_role_arn" {
  description = "The IAM role permitted to receive failure feedback for this topic"
  type        = string
  default     = null
}

variable "http_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
  default     = null
}

variable "http_success_feedback_sample_rate" {
  description = "The percentage of success to sample (0-100)"
  type        = number
  default     = null
}

variable "lambda_failure_feedback_role_arn" {
  description = "The IAM role permitted to receive failure feedback for this topic"
  type        = string
  default     = null
}

variable "lambda_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
  default     = null
}

variable "lambda_success_feedback_sample_rate" {
  description = "The percentage of success to sample (0-100)"
  type        = number
  default     = null
}

variable "sqs_failure_feedback_role_arn" {
  description = "The IAM role permitted to receive failure feedback for this topic"
  type        = string
  default     = null
}

variable "sqs_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
  default     = null
}

variable "sqs_success_feedback_sample_rate" {
  description = "The percentage of success to sample (0-100)"
  type        = number
  default     = null
}


variable "archive_policy" {
  description = "The SNS archive policy"
  type        = string
  default     = null
}
