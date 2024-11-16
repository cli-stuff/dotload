#!/usr/bin/env bash

# shellcheck disable=SC2236

# Exit on any error
set -e

# Determine the installation prefix
if [[ ! -n "$PREFIX" ]]; then
    if echo "$OSTYPE" | grep -qE '^darwin.*'; then
        # The `/usr` directory in macOS is read-only, so you need to change the prefix to `/usr/local`
        # https://github.com/openstreetmap/mod_tile/issues/349#issuecomment-1784165860
        prefix="/usr/local"
    else
        prefix="/usr"
    fi
else
    prefix="$PREFIX"
fi

# Define the sudo command, which may be empty on systems where sudo is not required
sudo="sudo"

# shellcheck disable=SC2143,SC2034
# sudo is not required on Android or MSYS
if echo "$OSTYPE" | grep -qE '^(linux-android|msys).*'; then
    sudo=""
fi

print_msg() {
    echo -e "\e[1;32m↪\e[0m $1"
}

current_step=0
steps=2

step() {
    ((current_step++))
    print_msg "[$current_step/$steps] \e[1m$1\e[0m"
}

echo ""

if ! command -v git >/dev/null; then
    echo "Error: git is not installed"
    echo "Please install git and run this installer again"
    exit 1
fi

if [[ -f "$prefix/bin/dotload" ]]; then
    step "Updating"
else
    step "Installing"
fi

$sudo cp "bin/dotload" "$prefix/bin"

step "Done"

echo -e "\n\e[1;32mDone!\e[0m"
