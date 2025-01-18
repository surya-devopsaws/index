variable "ami-id" {
  type    = string
  default = "ami-09040d770ffe2224f" //update
}
variable "small" {
  default = "t2.micro"
}
variable "large" {
  default = "t2.large"
}
variable "key_pair" {
  default = "ohio"
}
variable "public-subnet" {
  default = "subnet-0e382f1664fab12c8" //update
}
variable "private-subnet" {
  default = "subnet-0e306222787aafad6" //update
}
variable "security_group" {
  type    = list(any)
  default = ["sg-0b6596681ec28a759", "sg-0c20fd6d57bc208fd"] //update
}
