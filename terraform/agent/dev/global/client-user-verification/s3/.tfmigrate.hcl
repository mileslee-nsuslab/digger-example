tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "miles-tfaction-backend"
      key    = "terraform/agent/dev/global/client-user-verification/s3/history.json"
    }
  }
}
