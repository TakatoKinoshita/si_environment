FROM tensorflow/tensorflow:1.10.1-gpu-py3

# Settings
ARG USERNAME=exp
ARG USER_UID=1234
ARG USER_GID=$USER_UID
ARG WORK_DIR=/workspace

# Install additional Python packages
COPY requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp

# Install additional OS packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends python3-tk

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
USER $USERNAME

# Set WORKDIR
WORKDIR $WORK_DIR

# Set default command
# CMD ["python3"]
