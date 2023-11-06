vnets = {
  vnet_region1 = {
    resource_group_key = "net_region1"
    vnet = {
      name          = "vnet-shd-dv-cu-01"
      address_space = ["10.162.32.0/20"]
    }
    subnets = {
      default_subnet = {
        name = "sn-dv-cu-default"
        cidr = ["10.162.32.0/26"]
        service_endpoints = [
          "Microsoft.Storage",
          "Microsoft.KeyVault"
        ]
      }
      custom_vm_subnet = {
        name = "sn-dv-cu-custom-vm"
        cidr = ["10.162.32.64/26"]
        service_endpoints = [
          "Microsoft.Storage",
          "Microsoft.KeyVault"
        ]
      }
      private_endpoints = {
        name = "sn-dv-cu-pe-01"
        cidr = ["10.162.32.128/27"]
      }
    }
  }
}
