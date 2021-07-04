locals {
  hash = [{
    name = number
    type = string
  }]

}
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  table_name             = "test"
  billing_mode           = "PAY_PER_REQUEST"
  replica_regions        = ["us-east-1"]
  hash_key               = "number"
  read_capacity          = 0
  write_capacity         = 0
  hash_key_type          = "S"
  stream_enabled         = true
  point_in_time_recovery = false
  stream_view_type       = "NEW_AND_OLD_IMAGES"
}