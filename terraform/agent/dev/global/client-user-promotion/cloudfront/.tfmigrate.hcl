tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "miles-tfaction-backend"
      key    = "terraform/agent/dev/global/client-user-promotion/cloudfront/history.json"
    }
  }
}
