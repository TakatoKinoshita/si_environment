# devcontainer-template
A devcontainer template for experimental environments

## Contents
- [`Dockerfile`](/Dockerfile)
- [`.github/workflows/docker-build-push.yaml`](/.github/workflows/docker-build-push.yaml)
- [`.github/workflows/create-git-tag.yaml`](/.github/workflows/create-git-tag.yaml)
- [`.devcontainer/devcontainer.json`](/.devcontainer/devcontainer.json)

## [`Dockerfile`](/Dockerfile)
A template of Dockerfile.
The purpose is to guarantee the experimental reproducibility.
Hence, I recommend editing this to fix required packages.
Please edit `FROM` instruction at least.

## [`.github/workflows/docker-build-push.yaml`](/.github/workflows/docker-build-push.yaml)
A template of Github Actions setting.
A docker image is built and pushed into Dockerhub by Github Actions according to this setting when you release a tagged commit.
Please set `secrets.DOCKER_USERNAME` and `secrets.DOCKER_PASSWORD` at least.

## [`.github/workflows/create-git-tag.yaml`](/.github/workflows/create-git-tag.yaml)
A template of Github Actions setting.
Every push into the remote `main` branch is tagged according to the Japan Standard Time.
A read/write permission is required (Please refer Settings > Actions > General > Workflow permissions).

## [`.devcontainer/devcontainer.json`](/.devcontainer/devcontainer.json)
A template of devcontainer setting.
This may not be necessary for publishing your environment, but it is convenient for performing the experiment.
Please edit `image` at least.
