resource "azurerm_kubernetes_cluster" "DemoMaak" {
    name = "${var.KubernetesCluserName}"
    location = "${azurerm_resource_group.DemoMaak.location}"
    resource_group_name = "${azurerm_resource_group.DemoMaak.name}"
    dns_prefix = "${var.AKSPrefix}-A"

    agent_pool_profile {
        name = "default"
        count = 1
        vm_size = "Standard_A1_v2"
        os_type = "Linux"
        os_disk_size_gb = 30
    }

    service_principal {
        client_id     = "00000000-0000-0000-0000-000000000000"
        client_secret = "00000000000000000000000000000000"

    }
}

output "client_certificate" {
      value = "${azurerm_kubernetes_cluster.DemoMaak.kube_config.0.client_certificate}"
      
}

output "kube_config" {
  value = "${azurerm_kubernetes_cluster.DemoMaak.kube_config_raw}"
  
}

