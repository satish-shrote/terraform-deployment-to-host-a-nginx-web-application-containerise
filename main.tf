resource "azurerm_resource_group" "webserver" {
   name = "nginx-server"
   location = var.location
}

resource "azurerm_linux_virtual_machine" "nginx" {
   size = "Standard_F2"
   name = "nginx-webserver"
   resource_group_name = azurerm_resource_group.webserver.name
   location = azurerm_resource_group.webserver.location
   custom_data = base64encode(file("scriptsinit.sh"))
   network_interface_ids = [
       azurerm_network_interface.webserver.id,
   ]

   source_image_reference {
       publisher = "Canonical"
       offer = "UbuntuServer"
       sku = "18.04-LTS"
       version = "latest"
   }

   computer_name = "nginx"
   admin_username = "adminuser"
   admin_password = "satish@.123"
   disable_password_authentication = false

   os_disk {
       name = "nginxdisk01"
       caching = "ReadWrite"
       storage_account_type = "Standard_LRS"
   }

   tags = {
       environment = var.environment
       costcenter = "it"
   }

   depends_on = [azurerm_resource_group.webserver]
}
