#!/bin/bash

set -euxo pipefail

sudo chmod 1777 /opt
mkdir /opt/drake-wheel
sudo chmod 1777 /opt/drake-wheel

cd drake

bazel info
bazel info --announce_rc
false

bazel run //tools/wheel:builder -- \
  --output-dir /opt/drake-wheel 0.0.0
