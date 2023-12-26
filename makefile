REGISTRY=lasegunda.quay.com.ar
GROUP=lasegunda
IMAGE=api-sso
TAG=1.3.0


run r:
	sed -i "s/newName: \S*/newName: ${REGISTRY}\/${GROUP}\/${IMAGE}/g" .devops/kustomize/overlays/desa/kustomization.yaml 
	sed -i "s/newTag: \S*/newTag: ${TAG}/g" .devops/kustomize/overlays/desa/kustomization.yaml


kustomize k:
	kustomize build .devops/kustomize/overlays/desa/