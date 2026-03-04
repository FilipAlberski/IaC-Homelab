rhce = {
  rhce-control = {
    vm_id       = 8000
    name        = "rhce-control"
    description = "RHCE – Ansible control node"
    cores       = 2
    memory      = 2048
    disk_gb     = 25
    ip          = "192.168.40.200/24"
    gateway      = "192.168.40.1"
    datastore_id = "datav1"
  }
  rhce-node-01 = {
    vm_id       = 8001
    name        = "rhce-node-01"
    description = "RHCE – managed node 1"
    cores       = 1
    memory      = 2048
    disk_gb     = 25
    ip          = "192.168.40.201/24"
    gateway      = "192.168.40.1"
    datastore_id = "datav1"
  }
  rhce-node-02 = {
    vm_id       = 8002
    name        = "rhce-node-02"
    description = "RHCE – managed node 2"
    cores       = 1
    memory      = 2048
    disk_gb     = 25
    ip          = "192.168.40.202/24"
    gateway      = "192.168.40.1"
    datastore_id = "datav1"
  }
  rhce-node-03 = {
    vm_id       = 8003
    name        = "rhce-node-03"
    description = "RHCE – managed node 3"
    cores       = 1
    memory      = 2048
    disk_gb     = 25
    ip          = "192.168.40.203/24"
    gateway      = "192.168.40.1"
    datastore_id = "datav1"
  }
  rhce-node-04 = {
    vm_id       = 8004
    name        = "rhce-node-04"
    description = "RHCE – managed node 4"
    cores       = 1
    memory      = 2048
    disk_gb     = 25
    ip          = "192.168.40.204/24"
    gateway      = "192.168.40.1"
    datastore_id = "datav1"
  }
  rhce-node-05 = {
    vm_id       = 8005
    name        = "rhce-node-05"
    description = "RHCE – managed node 5"
    cores       = 1
    memory      = 2048
    disk_gb     = 25
    ip          = "192.168.40.205/24"
    gateway      = "192.168.40.1"
    datastore_id = "datav1"
  }
}
