# BakewareExample

An example Bakeware project

# Build

```sh
podman build --file Containerfile --env ELIXIR_VERSION=1.15.5 --tag bakeware_example:latest .
podman run -v `pwd`:/app/_build/prod/rel/bakeware -e MIX_ENV=prod bakeware_example:latest mix release
```
