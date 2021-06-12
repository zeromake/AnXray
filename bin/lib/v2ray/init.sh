#!/usr/bin/env bash

source "bin/init/env.sh"

export PATH="$PATH:$(go env GOPATH)/bin"

[ -f library/xray/go.mod ] || git submodule update --init library/xray || exit 1
cd library/xray
git reset --hard && git clean -fdx
go mod download -x && go get -v golang.org/x/mobile/cmd/... || exit 1
