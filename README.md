#  si_environment
A Docker image and devcontainer for [LUMP](https://github.com/ganguli-lab/pathint).

## Contents
- [`Dockerfile`](/Dockerfile)
- [`requirements.txt`](/requirements.txt)
- [`.devcontainer/devcontainer.json`](/.devcontainer/devcontainer.json)

## [`Dockerfile`](/Dockerfile)
`Dockerfile` defines experimental environment to guarantee the reproducibility.
This mainly consists of following 4 steps:

1. Based on the official [tensorflow-gpu image](https://hub.docker.com/layers/tensorflow/tensorflow/1.10.1-gpu-py3/images/sha256-6243acd2b19fd3280cbd391ecc8a0d7c20ec5b243a42b12e8808c2fb5e8d6ac0?context=explore)
2. Install additional Python packages from `requirements.txt` and additional OS packages
3.  Create non-root user (`exp`)
4.  Set work directory (`/workspace`)

## [`requirements.txt`](/requirements.txt)
`requirements.txt` is based on the [SI dependency](https://github.com/ganguli-lab/pathint?tab=readme-ov-file#requirements).

## [`.devcontainer/devcontainer.json`](/.devcontainer/devcontainer.json)
A template of devcontainer setting.
This may not be necessary for building the experimental environment, but it is convenient to perform the experiment.
Please edit the value of `image` and argument `--shm-size` if you need.
