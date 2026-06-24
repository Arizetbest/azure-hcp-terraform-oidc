resource_group_name = "rg-dev-hcp-oidc-weu"
location            = "westeurope"

vnet_name          = "vnet-dev-hcp-oidc-weu"
vnet_address_space = ["10.20.0.0/16"]

subnet_name             = "snet-dev-workload-weu"
subnet_address_prefixes = ["10.20.1.0/24"]

vm_name        = "vm-dev-hcp-oidc-01"
vm_size        = "Standard_B2s"
admin_username = "azureuser"

public_key       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCfkOsW0rdGEofc+jRJ+EftQewzJi46PVGQ9BhrEtuTm/6jGJuD4GoepMvr8tyYUXW4Q9+2l1e3wjAROr/ued4a8ehZ/aKxPed39bUUi9Zm1814IycTgL8tvGoSB9yyee/sNUbLTe3xTvhTS1HKNh74fww/sjIZtH67BEUMHaqE2yBFKJs75aAJ3v/h+8QNW0Nq3FyQCL5x55bpMmqZf0oerGqkI8oCEVJgWZDA3zNlC2dUi6saa3pXuoCgAXtyj3/MxUaG1gSpM0LUJFRIogyjno/5hFKzqjF9OWWGSsNRpqGwBGB+c7/n84nWQ3dq2uMFZnLUlfF2j9rxqPbTGJ3FHTW51xnX/qLpuoFng8y9QookDyMDLj/tUfZGPxmWcKQ3ufhOsbzX/jinMrRjdjMXvi4Wl+7CUc+It8JCQ6IhLKHcUFbv0DMuMz9iU07e/Of13GPMdy00dy7yzdRzhemsBPbEdgAlSXorZBBKASSxo2cB0+NfLv4lNVmvP+U7z+e8atuQh0WjTIBP6Qu4+O4TWZQ11z6bJdjK/6/dejL8NtFpPydKpe9ePZWZraGz7yH8FmS4F47iuvQ+uFxrmEMc8cNAIoU81OjM7LxG9JRr7RMdMexMiUfW7uxwzTfxug2k2c2+21p0eRGF0iTOR2Yo+O315dIgLfTNKMFJkVyivQ== arize@azure-vm"
allowed_ssh_cidr = "192.168.1.130/32"
