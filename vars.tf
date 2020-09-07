variable "name" {
  description = "DynamoDB table name"
}

variable "hash_key" {
  description = "Table hash key"
}

variable "attributes" {
  description = "Table attributes"
  type        = map(any)
}
