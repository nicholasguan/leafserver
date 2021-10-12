#!/usr/bin/env bash

ROOT_DIR=`cd "$(dirname "$0")";pwd`
export GOPATH="${ROOT_DIR}"

cd "${ROOT_DIR}/src/server"
go install server

cd "${ROOT_DIR}/bin"
./server
