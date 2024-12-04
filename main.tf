module "gcs_buckets" {
  source                      = "./modules/gcs_bucket"
  bucket_prefix               = var.bucket_prefix
  location                    = var.location
  storage_class               = var.storage_class
  labels                      = var.labels
  versioning                  = var.versioning
  uniform_bucket_level_access = var.uniform_bucket_level_access
  bucket_count                = var.bucket_count
}
