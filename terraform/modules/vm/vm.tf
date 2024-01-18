resource "azurerm_network_interface" "" {
  name                = ""
  location            = ""
  resource_group_name = ""

  ip_configuration {
    name                          = "internal"
    subnet_id                     = ""
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = ""
  }
}

resource "azurerm_linux_virtual_machine" "" {
  name                = ""
  location            = ""
  resource_group_name = ""
  size                = "Standard_DS2_v2"
  admin_username      = ""
  network_interface_ids = []
  admin_ssh_key {
    username   = ""
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCs5sky5BqGz3SD7xnMhBLeztpOeRE29qseTg0BI5GAK/eViYmJYmD87Mx5TjcGMoCsRhbTPxFlyW/4YQzPYc7yylTIJSM8nukpoAWssKTZqrltCS27CPhcNmkstXFr3ZxV5ZyUGEybh81YwyxKhhLL2zjuQwR45S5U5/sajd0hpIkQxYQGnZZFT57kVVEMKIEXrLf09ytIzEltDgRGhrqsBBGZXlSL3K5liTa1OiAXPWd2Xob76UDn8awc+28ZYOQ61bfpUERjDMlGkMWjfTPgMVj+9stVNDsiHJP+vLqUkyEDQg2Esqu4SK1aF4Jrahez6bg+28BDxrIE+3OuMbh2fDr46j7lvm/iYH/ZXUoOZ8MU5IFxai946+qc5Vg5tSiCdd7Trvy5vasYtfOGn2Yw7xXqbbi7qHmBc6rqEJYDNNSW69HVSWJFvXcEwOunR0e07cMWL2IdEIYZloEU2IfQSs86V6JVktaay6n0pwIiANRqJyoDc8WGl3rXoIUonjU= odl_user@SandboxHost-638411929760963417"
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
