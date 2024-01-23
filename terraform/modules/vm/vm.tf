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
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDABBAN3zBvXTCzbibzOnwQ5HNdS2968bsQFkmZkFBYrllMdi+M/hvhxHpk0LYy6s5IpV4xbTdE0nJUEsRZi6ph36rqHc+XXYvD9i6w7rygIH/MJ25jab+5Xx6hwjMpL3u7at/ZU+/nRJjq0DLdHgfFwgLPfyYvta6/QXJIV8SKNpthLgm2+lA7DU0lYuWH8+Vb75Lqx7kqhA4neYPFPDudpM6aYLBJb6/p2YA/4XVSpSgf1wi6Z0FVkPQ7F2lqBhHpDG+691/DV0hnA0JC5PAm89qu9QyS0lkwH+mHmSLXjtaG64jfOwxQhU31x44IVwJaJ/Aj7Un3rqGnKXefYlstwEnkjXsOYoFl23wWMOnwuz2MPQaoSInF/2VS+b0ey7HSeoT3UdpzJl3KkJXUtxxyEumCJwbyhK8cxy2yiykyeBE8evLDXTF++r9wpTy3MHZ4vlNFLSZUdlwR3ZA9ZT8tjj4I2n/9Wpq80K7E1Xw/IIrrkLFlapnMWMrwXG1L/P8= odl_user@SandboxHost-638416275728446458"
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
