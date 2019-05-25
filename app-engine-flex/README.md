# Pre-requisites

Follow [GCP setup](../README.md).

# tl;dr

Initialise app engine

    gcloud app create --region=us-west2

Then deploy app

```
gcloud app deploy --image-url gcr.io/$PROJECT_ID/hello-gcp:$HELLO_VERSION
```

Visit app

    gcloud app browse

View logs

    gcloud app logs tail -s default

# With Terraform

Initialise

    terraform init
    terraform workspace new appengine

[Download service account credentials](https://console.cloud.google.com/apis/credentials/serviceaccountkey) to
~/gcp/try-10-credentials.json and enabled **App Engine Admin** API from the API 
dashboard.

    set -x GOOGLE_CLOUD_KEYFILE_JSON ~/gcp/try-10-credentials.json
    
Apply

    terraform select appengine    
    terraform plan
    terraform apply

# Lint and validate
   
    terraform fmt
    terraform validate

# Restore State    
    
    terraform import google_app_engine_application.app 
    terraform import google_app_engine_firewall_rule.rule


# Thanks

https://cloud.google.com/appengine/docs/flexible/custom-runtimes/quickstart