#!/bin/bash

set -euxo pipefail

sudo chmod 1777 /opt
mkdir /opt/drake-wheel
sudo chmod 1777 /opt/drake-wheel

cd drake
bazel run //tools/wheel:builder -- \
  --no-provision \
  --snopt-path /tmp/snopt.tar.gz \
  --output-dir /opt/drake-wheel 1.33.0
