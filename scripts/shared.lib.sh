#!/bin/bash

set -e
set -x

DOCKER_IMAGE_NAME=$(node -e 'console.log(require("'${SCRIPTS_DIR}/../package.json'").repository.url.split("github.com/")[1].replace(".git", ""));')
MAIN=$(node -e "console.log(require('${SCRIPTS_DIR}/../package.json').main);")
PACKAGE_VERSION=$(node -e 'console.log(require("./package.json").version);')
SUDO=$(which sudo || echo -ne "")
