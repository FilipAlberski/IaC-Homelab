output "vm_ips" {
  description = "Adresy IP stworzonych VM"
  value = {
    for k, vm in proxmox_virtual_environment_vm.vms :
    k => vm.initialization[0].ip_config[0].ipv4[0].address
  }
}

output "vm_ids" {
  description = "VM ID w Proxmox"
  value = {
    for k, vm in proxmox_virtual_environment_vm.vms :
    k => vm.vm_id
  }
}
