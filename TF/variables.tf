variable "agent_count" {
  default = 3
}

variable "aks_service_principal_app_id" {
  default = "737fa99b-e59a-48a3-a766-8dd0d00b60e8"
}

variable "aks_service_principal_client_secret" {
  default = "qgR8Q~5mhGY3Ry8WXzUufJTTHj.YE4R-jOmcAcQ4"
}

variable "cluster_name" {
  default = "k8s_cl_ub"
}

variable "dns_prefix" {
  default = "k8sdnsub1"
}

variable "resource_group_location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

#variable "resource_group_name_prefix" {
#  default     = "rg"
#  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
#}

variable "azurerm_resource_group" {
    default = "ub-rg"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}