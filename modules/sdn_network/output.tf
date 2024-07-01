output "private_sdn_network" {
  value = upcloud_network.private_sdn_network.id
}

output "private_sdn_network_be" {
  value = upcloud_network.private_psql_be.id
}