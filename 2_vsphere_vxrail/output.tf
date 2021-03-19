# output "vm_ip" {
#   value = { 
#     for vm in vsphere_virtual_machine.learn : formatlist(vm.guest_ip_addresses) => vm.guest_ip_addresses
#   }
# }