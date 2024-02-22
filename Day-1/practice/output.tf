output "myoutput" {
  value = var.mystring
}

output "myintop" {
  value = var.myint
}

output "myboolop" {
  value = var.mybool
}

output "mylistop" {
  value = var.mylist[0]
}

output "mymapop" {
  value = var.mymap
}

output "myobjectop" {
  value = var.myobject
}

output "map_of_objects_op" {
  value = var.map_of_objects
}

output "locals_op" {
  value = local.number
}