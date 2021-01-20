resource "azurerm_databricks_workspace" "demo" {
  name                = "databricks-demo"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  sku = "premium"

  tags = {
    Environment = "Development"
  }
}