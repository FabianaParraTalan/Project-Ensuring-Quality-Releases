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
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTEDI5CiVEXXK61TGgrXd5ED4q+y0tlPyvjxUZHcYMLy8x42hBBfoGu4bMRPFLnJSq2fGXF3vValq85UBOJSdXJU195/aigrpsVhTRzCIzE/TJBPd0I9/elAGfts1unLrZW5cC2ZgWHtRJSii/rvjU9wNN0E7WmjLYAHIquImawDeTksoyxDhuANKiHUGE3jR0a15CGrDn9Ipn9D2AMhGkQgJDSMBoyG70Ks18HtSdG6VRxaWYWPVRlbenjpmx+MoEa7r3zhgywuAxjEJtV1ikLKXeZ24GnU5g47uOAAOASxFxN9YxixVocHEGn+slugpvhf06RWLxPotSv83YAyGpFuRvLYtXxMJucyZvi85sHQUnQO1hzugGhRfHAbh09RYWoAkUb077peIEX85mFmqqyzQhcU6JJjPAWdM0xj/qypMMcjEeP765U3xqcP4Jm60e1KlYnIWYx4btc6hj54mXCHltLUDb4V8/XJdufqnAfqRQj0VcSWC+OAMtC4JNRxc= odl_user@SandboxHost-638417209495594423"
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
