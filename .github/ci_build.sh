#!/bin/bash

set -euxo pipefail

sudo chmod 1777 /opt
mkdir /opt/drake-wheel
sudo chmod 1777 /opt/drake-wheel

cd drake
bazel run //tools/wheel:builder -- \
  --no-provision \
  --output-dir /opt/drake-wheel 1.29.0

find . -maxdepth 2
