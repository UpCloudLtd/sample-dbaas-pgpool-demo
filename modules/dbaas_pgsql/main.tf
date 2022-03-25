resource "upcloud_managed_database_postgresql" "dbaas_pgsql" {
  name = "demo-pqsql-dbaas"
  plan = var.dbaas_plan
  zone = var.zone
}

resource "upcloud_managed_database_logical_database" "testdb" {
  service = upcloud_managed_database_postgresql.dbaas_pgsql.id
  name    = "testdb"
}

resource "upcloud_managed_database_user" "testuser" {
  service  = upcloud_managed_database_postgresql.dbaas_pgsql.id
  username = "testuser"
}

resource "upcloud_managed_database_user" "monitor" {
  service  = upcloud_managed_database_postgresql.dbaas_pgsql.id
  username = "monitor"
}