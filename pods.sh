# build images
podman build -t laravel-app ./laravel-app

# check if podman is installed
podman pod stop laravel-pod 2>/dev/null || true

if podman pod exists laravel-pod; then
  podman pod rm -f laravel-pod
fi
podman pod create --name laravel-pod

podman play kube ./pods.yaml
