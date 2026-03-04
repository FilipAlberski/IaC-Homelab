variable "proxmox_endpoint" {
  description = "URL do Proxmox API, np. https://192.168.1.10:8006/"
  type        = string
}

variable "proxmox_api_token" {
  description = "API token w formacie user@realm!token-id=secret"
  type        = string
  sensitive   = true
}

variable "proxmox_insecure" {
  description = "Pomiń weryfikację TLS (dla self-signed cert)"
  type        = bool
  default     = true
}

variable "proxmox_node" {
  description = "Nazwa węzła Proxmox"
  type        = string
  default     = "pve"
}

variable "vm_defaults" {
  description = "Domyślne parametry dla VM"
  type = object({
    cores   = number
    memory  = number
    disk_gb = number
  })
  default = {
    cores   = 2
    memory  = 2048
    disk_gb = 20
  }
}

variable "rhce" {
  description = "Mapa definicji maszyn wirtualnych"
  type = map(object({
    vm_id       = number
    name        = string
    description = string
    cores        = optional(number)
    memory       = optional(number)
    disk_gb      = optional(number)
    datastore_id = optional(string, "local-lvm")
    ip           = string
    gateway      = string
  }))
  default = {}
}

variable "template_id" {
  description = "VM ID szablonu Rocky Linux w Proxmox"
  type        = number
  default     = 9000
}

variable "ssh_public_key" {
  description = "Klucz publiczny SSH wstrzykiwany przez cloud-init"
  type        = string
}
