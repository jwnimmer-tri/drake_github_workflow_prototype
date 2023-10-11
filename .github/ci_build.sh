#!/bin/bash

set -euxo pipefail

cd drake
bazel run //tools/wheel:builder -- \
  --output-dir /opt/drake-wheel 0.0.0
