output "proxy_sdn_ip" {
  value = upcloud_server.proxy-server.network_interface[1].ip_address
}
output "proxy_ip_addresses" {
  value = upcloud_server.proxy-server.network_interface[0].ip_address
}