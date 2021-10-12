#!/usr/bin/env bash

ROOT_DIR=`cd "$(dirname "$0")";pwd`

# init go.mod and go.sum
cd "${ROOT_DIR}/src/server"
if [[ -f "go.mod" ]];then
    rm -f go.mod
    echo "File:${ROOT_DIR}/src/server/go.mod has been deleted."
fi
if [[ -f "go.sum" ]];then
    rm -f go.sum
    echo "File:${ROOT_DIR}/src/server/go.sum has been deleted."
fi
go mod init server

go get github.com/name5566/leaf
