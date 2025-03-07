#!/bin/sh

set -o errexit
set -o nounset

export CGO_ENABLED=0
export GO111MODULE=on

cd tools >/dev/null
go install github.com/golangci/golangci-lint/cmd/golangci-lint
cd - >/dev/null

printf "Running golangci-lint: "
ERRS=$(golangci-lint run "$@" 2>&1 || true)
if [ -n "${ERRS}" ]; then
    echo "FAIL"
    echo "${ERRS}"
    echo
    exit 1
fi
echo "PASS"
echo
