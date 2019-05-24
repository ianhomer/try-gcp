# Pre-requisites

Follow [GCP setup](../README.md).

# tl;dr

Create cluster

```
gcloud container clusters create hello-cluster \
  --machine-type=f1-micro \
  --num-nodes=1 \
  --max-nodes=2 \
  --region=us-west1 \
  --no-enable-autoupgrade
```

Check cluster created OK

    gcloud compute instances list

Check you're configured to use the right cluster

    kubectl config get-contexts

Deploy service - _edit the project in the image name in hello-deployment.yaml as
appropriate_

    kubectl apply -f hello-deployment.yaml
    kubectl apply -f hello-service.yaml  
    
And view system

    kubectl get all     