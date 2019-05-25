/*
resource "google_app_engine_application" "app" {
  project     = "try-10"
  location_id = "us-west2"
}
*/

resource "google_app_engine_firewall_rule" "whitelist" {
  project = "try-10"
  priority = 1000
  action = "ALLOW"
  source_range = "109.155.0.0"
}

resource "google_app_engine_firewall_rule" "deny_all" {
  project = "try-10"
  priority = 2000
  action = "DENY"
  source_range = "*"
}

