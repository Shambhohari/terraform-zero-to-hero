mystring = "stringhere"
myint    = 123
mybool   = false
mylist   = ["us-east-1a", "123"]
mymap = {
  name        = "myinstance",
  Environment = "prod"
}

myobject = {
  cidr   = "10.0.0.0/24",
  region = "us-east-1"
}

map_of_objects = {
  "subnet1" = { cidr = "10.0.0.0/24", region = "us-east-1" }
  "subnet2" = { cidr = "10.0.0.1/24", region = "us-east-2" }
}