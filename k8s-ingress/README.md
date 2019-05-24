# Pre-requisites

Follow [GCP setup](../README.md).

# tl;dr

Create certificates and apply tls cert and key secret

    ./initialise-keys-and-certificates.sh
    ./apply-tls-secret.sh
    
Apply secret, deployment and service

    kubectl apply -f mock-secret.yaml
    kubectl apply -f hello-deployment.yaml
    kubectl apply -f hello-service.yaml
    kubectl apply -f hello-ingress.yaml

And view system

    kubectl get all 
    kubectl get ingress
    kubectl describe ingress hello-nginx  