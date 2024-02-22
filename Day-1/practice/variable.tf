variable "mystring" {
  description = "value1"
  type        = string
}

variable "myint" {
  description = "value2"
  type        = number
}

variable "mybool" {
  description = "value3"
  type        = bool

}

variable "mylist" {
  description = "value4"
  type        = list(string)
}

variable "mymap" {
  description = "value5"
  type        = map(any)
}

variable "myobject" {
  type = object({
    cidr   = string
    region = string
  })
}

variable "map_of_objects" {
  type = map(object({
    cidr   = string
    region = string
  }))

}