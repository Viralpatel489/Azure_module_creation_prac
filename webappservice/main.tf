resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_service_plan" "asp" {
  name                = var.asp_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "awa" {
  name                = var.awa_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.asp.location
  service_plan_id     = azurerm_service_plan.asp.id
  depends_on            = [azurerm_service_plan.asp]
  https_only            = true
  site_config { 
    minimum_tls_version = "1.2"
    application_stack {
    node_version = "20-lts"
    }
  }
}

resource "azurerm_cosmosdb_account" "cosmos" {
depends_on = [ azurerm_linux_web_app.awa ]
  name                = var.cosmos_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  offer_type          = "Standard"
  kind                = "MongoDB"

  capabilities {
    name = "EnableMongo"
  }

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = azurerm_resource_group.rg.location
    failover_priority = 0
  }
}
resource "azurerm_cosmosdb_mongo_database" "mongoDb" {
    depends_on = [ azurerm_cosmosdb_account.cosmos ]
  name                = var.mongo_db_name
  resource_group_name = azurerm_resource_group.rg.name
  account_name        = azurerm_cosmosdb_account.cosmos.name
  throughput          = 400
}
