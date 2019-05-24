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

# Thanks

https://cloud.google.com/appengine/docs/flexible/custom-runtimes/quickstart