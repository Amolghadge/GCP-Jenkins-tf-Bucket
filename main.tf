resource "google_storage_bucket" "my-bucket1" {
  name          = "gcp-tf-githubdemo-bucket-01"  
  project       = "charged-state-441016-j3"
  location      = "US"  
  force_destroy = true  
  public_access_prevention = "enforced"

}

resource "google_storage_bucket" "my-bucket2" {
  name                     = "gcp-tf-githubdemo-bucket-02"
  project                  = "charged-state-441016-j3"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "my-bucket3" {
  name                     = "gcp-tf-githubdemo-bucket-03"
  project                  = "charged-state-441016-j3"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}
