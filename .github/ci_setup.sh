#!/bin/bash

set -euxo pipefail

brew analytics off
brew update || (sleep 15; brew update)
brew bundle --file="${BASH_SOURCE%/*}/Brewfile.wheel" --no-lock
pip3.12 install -r "${BASH_SOURCE%/*}/requirements.wheel"

drake/setup/mac/source_distribution/install_prereqs_user_environment.sh

ln -s $(pwd)/.github/ci.bazelrc ~/.bazelrc

ln -s $(which gfortran-12) /usr/local/bin/gfortran

(cd snopt && tar cf /tmp/snopt.tar.gz src interfaces)
