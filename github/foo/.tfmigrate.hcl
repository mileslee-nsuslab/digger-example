tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "miles-tfaction-backend"
      key    = "github/foo/history.json"
    }
  }
}
