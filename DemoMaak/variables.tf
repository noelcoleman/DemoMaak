variable "Location" {
  type = "string"
  default = "UK West"
}
variable "ResourceGroupName" {
  type = "string"
  default = "DM-UKW-RG1"
}
variable "VirtualNetworkName" {
    type = "string"
    default = "DM-UKW-RG1-VNet01"
      
}
variable "VirtualNetworkAddressSpace" {
    type = "list"
    default = ["172.16.0.0/16"]
  
}

variable "SubnetName" {
    type = "string"
    default = "DM-UKW-RG1-VNet01-SB01"
  
}

variable "SubnetPrefix" {
    type = "string"
    default = "172.16.1.0/24"
  
}

variable "AKSPrefix" {
    type = "string"
    default = "DM-UKW-AKS"
  
}
variable "KubernetesCluserName" {
    type = "string"
    default = "${var.AKSPrefix}-C01"
  
}








