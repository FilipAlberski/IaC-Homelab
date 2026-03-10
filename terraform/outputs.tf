output "rhce_ips" {
  description = "Adresy IP węzłów RHCE"
  value = {
    for k, vm in proxmox_virtual_environment_vm.rhce :
    k => vm.initialization[0].ip_config[0].ipv4[0].address
  }
}

output "rhce_ids" {
  description = "VM ID węzłów RHCE"
  value = {
    for k, vm in proxmox_virtual_environment_vm.rhce :
    k => vm.vm_id
  }
}

output "infra_ips" {
  description = "Adresy IP serwerów infrastrukturalnych"
  value = {
    for k, vm in proxmox_virtual_environment_vm.infra :
    k => vm.initialization[0].ip_config[0].ipv4[0].address
  }
}

output "infra_ids" {
  description = "VM ID serwerów infrastrukturalnych"
  value = {
    for k, vm in proxmox_virtual_environment_vm.infra :
    k => vm.vm_id
  }
}
