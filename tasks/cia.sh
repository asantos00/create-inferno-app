#!/bin/bash
# Copyright (c) 2015-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.

# ******************************************************************************
# This creates an app with the global CLI and `inferno-scripts` from the source.
# It is useful for testing the end-to-end flow locally.
# ******************************************************************************

# Start in tasks/ even if run from root directory
cd "$(dirname "$0")"

function cleanup {
  echo 'Cleaning up.'
  # Uncomment when snapshot testing is enabled by default:
  # rm ./template/src/__snapshots__/App.test.js.snap
}

# Error messages are redirected to stderr
function handle_error {
  echo "$(basename $0): ERROR! An error was encountered executing line $1." 1>&2;
  cleanup
  echo 'Exiting with error.' 1>&2;
  exit 1
}

function handle_exit {
  cleanup
  echo 'Exiting without error.' 1>&2;
  exit
}

# Exit the script with a helpful error message when any error is encountered
trap 'set +x; handle_error $LINENO $BASH_COMMAND' ERR

# Cleanup before exit on any termination signal
trap 'set +x; handle_exit' SIGQUIT SIGTERM SIGINT SIGKILL SIGHUP

# Echo every command being executed
set -x

# Go to root
cd ..
root_path=$PWD

# ******************************************************************************
# Pack inferno-scripts so we can verify they work.
# ******************************************************************************

# Install all our packages
$root_path/node_modules/.bin/lerna bootstrap

cd packages/inferno-scripts

# Save package.json because we're going to touch it
cp package.json package.json.orig

# Like bundle-deps, this script modifies packages/inferno-scripts/package.json,
# copying own dependencies (those in the `packages` dir) to bundledDependencies
node $root_path/tasks/bundle-own-deps.js

# Finally, pack inferno-scripts
scripts_path=$root_path/packages/inferno-scripts/`npm pack`

# Restore package.json
rm package.json
mv package.json.orig package.json


# ******************************************************************************
# Now that we have packed them, call the global CLI.
# ******************************************************************************

# Go back to the root directory and run the command from here
cd $root_path
node packages/create-inferno-app/index.js --scripts-version=$scripts_path "$@"

# Cleanup
cleanup
