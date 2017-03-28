#!/bin/bash

# Get directory path of *this* script file and exit if is not set, NULL, or an empty string
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"
SCRIPTS_DIR="${SCRIPTS_DIR:?}"

. ${SCRIPTS_DIR}/shared.lib.sh

main() {
  NODE_FOLDER=node-v7.7.4-linux-x64
  NODE_TARBALL=${NODE_FOLDER}.tar.xz

  wget https://nodejs.org/dist/v7.7.4/${NODE_TARBALL} -N

  tar -xf ${NODE_TARBALL}

  ${SUDO} docker build -t "${DOCKER_IMAGE_NAME}" .

  rm -rf ${NODE_FOLDER} ${NODE_TARBALL}
}

main $@
