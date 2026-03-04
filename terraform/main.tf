resource "proxmox_virtual_environment_vm" "vms" {
  for_each = var.rhce

  node_name   = var.proxmox_node
  vm_id       = each.value.vm_id
  name        = each.value.name
  description = each.value.description

  clone {
    vm_id = var.template_id
    full  = true
  }

  cpu {
    cores = coalesce(each.value.cores, var.vm_defaults.cores)
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = coalesce(each.value.memory, var.vm_defaults.memory)
  }

  disk {
    datastore_id = each.value.datastore_id
    interface    = "scsi0"
    size         = coalesce(each.value.disk_gb, var.vm_defaults.disk_gb)
  }

  network_device {
    bridge = "vmbr0"
    model  = "virtio"
  }

  initialization {
    ip_config {
      ipv4 {
        address = each.value.ip
        gateway = each.value.gateway
      }
    }
    user_account {
      username = "ansible"
      keys     = [var.ssh_public_key]
    }
  }

  agent {
    enabled = true
  }

  on_boot  = true
  started  = true
}
