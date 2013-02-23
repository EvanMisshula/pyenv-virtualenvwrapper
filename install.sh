#!/bin/sh

set -e

if [ -z "${PREFIX}" ]; then
  PREFIX="/usr/local"
fi

BIN_PATH="${PREFIX}/bin"
LIBEXEC_PATH="${PREFIX}/libexec/pyenv-virtualenvwrapper"

mkdir -p "${BIN_PATH}"
mkdir -p "${LIBEXEC_PATH}"

for file in bin/*; do
  cp "${file}" "${BIN_PATH}"
done

for file in libexec/*; do
  cp "${file}" "${LIBEXEC_PATH}"
done

echo "Installed pyenv-virtualenvwrapper at ${PREFIX}"
