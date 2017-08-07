#!/bin/bash
export APP=cooking
export RBENV_VERSION=2.3.1

export WORKING_DIR=/tmp/rubygems$RANDOM
export RUBY_APP_REPO=$(cd `dirname "$0"`; cd ..; pwd)
export S3_CACHE=s3://np-ops/$APP/rubygems/
export S3_CACHE=s3://np-ops/$APP/rubygems/

gem install builder

gem build nytscracker.gemspec
aws s3 sync . $S3_CACHE/gems --exclude "*" --include "*.gem"

# Setup a temporary working dir
mkdir -p $WORKING_DIR/gems

# download the gems, so we don't stomp on the existing index
pushd $WORKING_DIR/
aws s3 sync $S3_CACHE .
popd

# generate the index, and upload
pushd $WORKING_DIR
gem generate_index -V
aws s3 sync . $S3_CACHE
popd

# teardown
rm -rf $WORKING_DIR
