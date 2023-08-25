tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "miles-terraform-backend"
      key    = "github/foo/history.json"
    }
  }
}
