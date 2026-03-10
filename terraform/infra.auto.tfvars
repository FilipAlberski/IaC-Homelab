infra = {
  proxy-01 = {
    vm_id        = 5001
    name         = "proxy-01"
    description  = "Traefik – reverse proxy"
    cores        = 2
    memory       = 2048
    disk_gb      = 20
    datastore_id = "local-lvm"
    ip           = "192.168.40.210/24"
    gateway      = "192.168.40.1"
  }
  app-01 = {
    vm_id        = 5002
    name         = "app-01"
    description  = "Docker – Zabbix, Grafana, Prometheus"
    cores        = 4
    memory       = 12288
    disk_gb      = 50
    datastore_id = "local-lvm"
    ip           = "192.168.40.211/24"
    gateway      = "192.168.40.1"
  }
  db-01 = {
    vm_id        = 5003
    name         = "db-01"
    description  = "PostgreSQL – baza danych"
    cores        = 2
    memory       = 8192
    disk_gb      = 50
    datastore_id = "local-lvm"
    ip           = "192.168.40.212/24"
    gateway      = "192.168.40.1"
  }
  dns-01 = {
    vm_id        = 5004
    name         = "dns-01"
    description  = "AdGuard Home – DNS + blokowanie reklam"
    cores        = 1
    memory       = 2048
    disk_gb      = 20
    datastore_id = "local-lvm"
    ip           = "192.168.40.213/24"
    gateway      = "192.168.40.1"
  }
}
