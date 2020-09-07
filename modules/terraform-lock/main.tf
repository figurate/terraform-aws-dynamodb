module "table" {
  source = "../.."

  name     = "terraform-lock"
  hash_key = "LockID"
  attributes = {
    LockID = "S"
  }
}
