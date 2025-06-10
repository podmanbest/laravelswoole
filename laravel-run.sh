# build images
podman build -t app-lara ./containers/php

# check if podman is installed
podman pod stop laravel 2>/dev/null || true
if podman pod exists laravel; then
  podman pod rm -f laravel
fi

# create from kube yaml
podman play kube ./laravel.yaml
