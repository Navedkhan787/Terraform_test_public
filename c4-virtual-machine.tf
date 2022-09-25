/*resource "azurerm_virtual_machine" "linux" {
  name                  = "provisioner_test"
  location              = azurerm_resource_group.myrg.location
  resource_group_name   = azurerm_resource_group.myrg.name
  network_interface_ids = [azurerm_network_interface.myvmnic.id]
  vm_size               = "Standard_DS1_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }


    provisioner "file" {
            connection {
    type     = "ssh"
    user     = "testadmin"
    password = "Password1234!"
    host     = azurerm_public_ip.mypublicip.ip_address
  }
    source      = "bash.sh"
    destination = "/home/testadmin/bash.sh"
  }

   provisioner "remote-exec" {
    connection {
    type     = "ssh"
    user     = "testadmin"
    password = "Password1234!"
    host     = azurerm_public_ip.mypublicip.ip_address
  }
    inline = [
      "ls -a",
      "mkdir thisiscreatedusingtf",
      "sudo chmod +x bash.sh",
      "sudo ./bash.sh"
 
    ]
   }

  provisioner "local-exec" {
    command = "echo ${azurerm_public_ip.mypublicip.ip_address} >> private_ips.txt"
  }
}
*/
