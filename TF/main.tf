# main.tf

provider "hyperv" {
  server = "W2" # Hyper-V server address
}

resource "hyperv_virtual_switch" "example_switch" {
  name = "LAN"
}

resource "hyperv_virtual_machine" "example_vm" {
  name             = "terraform-vm"
  memory           = 1024
  dynamic_memory   = true
  processor_count  = 2
  uptime_priority = 3
  network_interface {
    virtual_switch_name = hyperv_virtual_switch.example_switch.name
  }
  # Add more configuration as needed
}
