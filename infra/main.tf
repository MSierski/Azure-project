resource "azurerm_resource_group" "example" {
  name     = "${var.name}-resourcestf"
  location = var.location
}
 
resource "azurerm_kubernetes_cluster" "example" {
  name                = "${var.name}-aks1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "${var.name}aks1"
 
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