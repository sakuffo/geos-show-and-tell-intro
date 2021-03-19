variable "vsphere_server" {
  type    = string
  default = "rack9-4b-vc-01.vcf.vxrail.local"
}

variable "vsphere_user" {
  type    = string
  default = "administrator@vsphere.local"
}

variable "vsphere_password" {
  type    = string
  default = "Vx5eals!!"
}

variable "datacenter" {
  type    = string
  default = "vxrail-datacenter"
}

variable "cluster" {
  type    = string
  default = "vxrail-cluster"
}

variable "datastore" {
  type    = string
  default = "vxrail-datastore"
}

variable "network_name" {
  type    = string
  default = "server-net"
}