#!/bin/sh

set -e

sh -c "doctl -t $DO_TOKEN $*"
