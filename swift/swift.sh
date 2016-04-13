#!/usr/bin/env sh

docker run --name swift -it --rm --privileged -v $(pwd):/app -w /app swiftdocker/swift swift $@
