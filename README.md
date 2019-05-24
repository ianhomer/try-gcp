Try GCP

# tl;dr

```
brew cask install google-cloud-sdk
gcloud components install kubectl
```

Log in and select project

```
gcloud auth login
gcloud init
```

Start docker desktop and allow it to push images to your gcloud project

```
gcloud auth configure-docker
gcloud info
```

Change project, region etc if necessary

```
gcloud config set project try-10
gcloud config set compute/region us-west1
```

```
set -x HELLO_VERSION v1.4
set -x PROJECT_ID (gcloud config get-value project -q)
docker build -t gcr.io/$PROJECT_ID/hello-gcp:$HELLO_VERSION hello-gcp
docker push gcr.io/$PROJECT_ID/hello-gcp:$HELLO_VERSION
```

Test image in docker desktop

    docker run -p 8080:8080 gcr.io/$PROJECT_ID/hello-gcp:$HELLO_VERSION

Visit **Container Registry** in your GCP project to see this image in the 
registry.

Then

* [App Engine](app-engine-flex/README.md)
* [Simple k8s cluster](k8s-simple/README.md)
* [k8s with Ingress](k8s-ingress/README.md)
