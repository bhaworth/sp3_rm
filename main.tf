
# ------ Provider
provider "oci" {
    region           = var.region
}

locals {
    Sp3_id              = var.compartment_ocid
    Sp3_ssh_key         = var.ssh_pub_key
    Sp3_bastion_shape   = var.bastion_shape
    Sp3_headnode_shape  = var.headnode_shape
}

output "AD" {
    value = var.ad
}
output "cid" {
    value = local.Sp3_id
}
output "ssh_key" {
    value = local.Sp3_ssh_key
}
output "bshape" {
    value = local.Sp3_bastion_shape
}
output "hshape" {
    value = local.Sp3_headnode_shape
}


