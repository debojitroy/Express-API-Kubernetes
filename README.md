# Simple Express API with SSL

This repo is linked to this [blog](https://debojitroy.com/blogs/running-ssl-api-with-multi-node-local-kubernetes-cluster/).

## Express API Container

The `Express API` container hosts a simple `Express Server`. It listens on port `8080` and echoes the `hostname`.

## Envoy Container

The Envoy container listens for `TLS` connections on port `8443`. It forwards all incoming requests to the `Express Server` through the loopback address.

## Build the images

The build process is maintained using `makefile`

```shell
make
```

This will build and push the container images.

## Pod Description

`pod.express-ssl.yaml` describes the pod to run the containers in side-car pattern.
