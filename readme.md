# IaC Homelab

Automatyzacja infrastruktury laboratoryjnej przy użyciu Terraform i Ansible.

## Stack

- **Terraform** – provisioning VM na Proxmox (BPG Provider)
- **Ansible** – konfiguracja Rocky Linux

## Struktura

```
.
├── terraform/
│   ├── providers.tf          # BPG Proxmox provider
│   ├── variables.tf          # Zmienne (VMs, parametry)
│   ├── main.tf               # Definicje VM
│   ├── outputs.tf            # IP i ID maszyn
│   └── terraform.tfvars.example
└── ansible/
    ├── ansible.cfg
    ├── inventory/
    │   └── hosts.ini
    └── playbooks/
        ├── update.yml        # Aktualizacja systemu
        └── configure.yml     # Bazowa konfiguracja
```

## Szybki start

### Terraform

```bash
cd terraform
cp terraform.tfvars.example terraform.tfvars
# uzupełnij terraform.tfvars

terraform init
terraform plan
terraform apply
```

### Ansible

```bash
cd ansible

# Aktualizacja systemu
ansible-playbook playbooks/update.yml

# Bazowa konfiguracja
ansible-playbook playbooks/configure.yml
```

## Wymagania

- Terraform >= 1.6
- Ansible >= 2.14
- Proxmox z API token i szablonem Rocky Linux (cloud-init)
