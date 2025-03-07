#!/bin/sh

set -o errexit
set -o nounset

export CGO_ENABLED=0
export GO111MODULE=on

echo "Running tests:"
go test -installsuffix "static" "$@"
echo
