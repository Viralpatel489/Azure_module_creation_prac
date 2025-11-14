output "rg" {
    value = azurerm_resource_group.rg.name
    description = "resource group name"
  
}
output "asp" {
    value = azurerm_service_plan.asp.name
    description = "app service plan name"
  
} 
output "awa" {
    value = azurerm_linux_web_app.awa.name
    description = "linux web app name"
  
}
output "cosmosdb_account" {
    value = azurerm_cosmosdb_account.cosmos.name
    description = "cosmos db account name"
  
}
output "mongo_db" {
    value = azurerm_cosmosdb_mongo_database.mongoDb.name
    description = "mongo db name"
  
}