module "table" {
  source = "../.."

  name      = var.name
  hash_key  = "PK"
  range_key = "SK"

  attributes = {
    PK = "S"
    SK = "S"
  }
}
