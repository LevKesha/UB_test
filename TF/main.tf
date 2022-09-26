resource "azurerm_resource_group" "ub-rg" {
  name      = "ub-rg"
  location  = "westeurope"
}

resource "azurerm_kubernetes_cluster" "k8s_cl_ub" {
  name = "k8s_cl_ub"
  resource_group_name = azurerm_resource_group.ub-rg.name
  location            = azurerm_resource_group.ub-rg.location
  dns_prefix          = "k8sdnsub1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
  }
