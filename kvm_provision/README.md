Role Name
=========
KVM provisioning

Role Variables
--------------
kvm_provision_libvirt_pool_dir: "/var/lib/libvirt/images/ansible"
kvm_provision_vm_name: sandcastle-dev
kvm_provision_vm_vcpus: 1
kvm_provision_vm_ram_mb: 1024
kvm_provision_vm_size_of_storage: 5G
kvm_provision_vm_net: default
kvm_provision_vm_os_variant: unknown
kvm_provision_vm_graphics: none
kvm_provision_virt_install_extra_args: ""
kvm_provision_vm_root_pass: root
kvm_provision_cleanup_tmp: false
kvm_provision_ssh_key: /root/.ssh/id_rsa.pub

Dependencies
------------
- community.libvirt 

License
-------
https://www.gnu.org/licenses/gpl-3.0.html
