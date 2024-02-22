variable "subnet" {
  type = map(object({
    cidr_block = string
    region     = string
  }))
}