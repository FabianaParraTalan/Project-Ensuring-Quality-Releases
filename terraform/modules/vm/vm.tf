resource "azurerm_network_interface" "test_nic" {
  name                = "${var.application_type}-${var.resource_type}-nic"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  ip_configuration {
    name                          = "internal"
    subnet_id                     = "${var.subnet_id}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "${var.public_ip_address_id}"
  }
}

resource "azurerm_linux_virtual_machine" "test_vm" {
  name                = "${var.application_type}-VM"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  size                = "Standard_DS2_v2"
  admin_username      = "adminuser"
  network_interface_ids = [azurerm_network_interface.test_nic.id]
  source_image_id       = "/subscriptions/c9f1e8cb-24a3-405b-9046-bf2b34125d0c/resourceGroups/Azuredevops/providers/Microsoft.Compute/images/myPackerImage"
  admin_ssh_key {
    username   = "adminuser"
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
