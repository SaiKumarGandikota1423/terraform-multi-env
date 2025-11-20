variable "instance_names" {
  type = map
#   default = {
#     mongodb = "t3.small"
#     redis = "t2.micro"
#     mysql = "t3.small"
#   }
}

variable "zone_id" {
  default = "Z03390721TAW3412ZTWXG"
}

variable "domain_name" {
  default = "devopsawscloud.shop"
}