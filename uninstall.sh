#!/usr/bin/env bash

# Exit on any error
set -e

# Define the sudo command, which may be empty on systems where sudo is not required
sudo="sudo"

# shellcheck disable=SC2143,SC2034
# sudo is not required on Android or MSYS
if echo "$OSTYPE" | grep -qE '^(linux-android|msys).*'; then
    sudo=""
fi

$sudo rm "${PREFIX:-/usr$([ "$(uname)" = "Darwin" ] && echo "/local")}/bin/dotload"
hash -r
