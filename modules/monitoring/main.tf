resource "azurerm_monitor_metric_alert" "cpu_alert" {
  name                = "aks-cpu-alert"
  resource_group_name = var.resource_group_name
  scopes              = [var.aks_id]
  severity            = 2
  frequency           = "PT5M"
  window_size         = "PT5M"

  criteria {
    metric_namespace = "Microsoft.ContainerService/managedClusters"
    metric_name      = "node_cpu_usage_percentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }

  action {
    action_group_id = var.action_group_id
  }
}