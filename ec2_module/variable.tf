variable "ami_id" {
  type = any
}
variable "subnet_id" {
  type = any
}
variable "key_name" {
description = "This is key name"
type = string
}
variable "instance_type" {
  type = string
  default= "t2.micro"
}
variable "region" {
  type = string
}
variable "instance_name" {
  type = string
}
 
variable "owner" {
  type = string
  description = "Owner's email address"
}
 
variable "purpose" {
  type = string
  description = "Purpose of the EC2 instance"
}
 
variable "application_name" {
  type = string
  description = "Name of the application"
}
 
variable "project_name" {
  type = string
  description = "Name of the project"
}
 
variable "client" {
  type = string
  description = "Client name"
}
 
variable "department" {
  type = string
  description = "Department name"
}
 
variable "start_date" {
  type = string
  description = "Start date of the project"
}
 
variable "end_date" {
  type = string
  description = "End date of the project"
}
 

 variable "availability_zone" {
  type    = string
  default = "ap-south-1a"  # Default availability zone (you can change this value)
}
