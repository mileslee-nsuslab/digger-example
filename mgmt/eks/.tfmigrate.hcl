tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "miles-tfaction-backend"
      key    = "mgmt/eks/history.json"
    }
  }
}
