resource "azurerm_linux_virtual_machine" "vm" {
  name                = "VM-dev"
  resource_group_name = azurerm_resource_group.dev_rg.name
  location            = azurerm_resource_group.dev_rg.location
  size                = "Standard_DS1_v2"

  network_interface_ids = [azurerm_network_interface.nic.id]

  os_disk {
    name                 = "VM-dev-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
 source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name  = "VM-dev"
  admin_username = "adminuser"

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("C:/Users/Ger/AppData/Roaming/MOBAXT~1/home/.ssh/id_rsa.pub")
  }
}