#!/bin/sh -xe

mkdir -p build/test

if [ -z "$NO_UNITTESTS" ]; then
    python -m nose tests \
        --exclude-dir=tests/resources \
        --with-xunit --xunit-file=build/xunit.xml \
        -v || echo Tests failed
fi

