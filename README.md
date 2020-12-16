# sb-testing
Building `rhel8prereq` in rooted mode (to get access to required host appstreams and repositories). Transfering the built `rhel8prereq` to the rootless environment (where there is more user diskspace for large container builds).

```
sudo podman build -t rhel8prereq -f Dockerfile.PreReq8 .
sudo podman push rhel8prereq dir:/home/dleeapho/images/rhel8prereq

podman pull dir:/home/dleeapho/images/rhel8prereq
podman tag localhost/home/dleeapho/images/rhel8prereq:latest rhel8prereq
```