

# Create the GCS Bucket
resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  project       = var.gcp_project_id  
  location      = var.bucket_location                        
  force_destroy = true        
  uniform_bucket_level_access = true             

  # Optional: Recommended security setting to prevent public access
  public_access_prevention = "enforced"
}