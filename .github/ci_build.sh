#!/bin/bash

set -euxo pipefail

chmod 1777 /opt
mkdir /opt/drake-wheel
chmod 1777 /opt/drake-wheel

cd drake
bazel run //tools/wheel:builder -- \
  --output-dir /opt/drake-wheel 0.0.0
