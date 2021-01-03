variable "name" {
  description = "DynamoDB table name"
}

variable "hash_key" {
  description = "Table hash key"
}

variable "range_key" {
  description = "Table range key"
  default     = null
}

variable "attributes" {
  description = "Table attributes"
  type        = map(any)
}
