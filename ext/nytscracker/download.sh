DIR=$(cd `dirname "$0"` && cd .. && pwd)
TARGET_ASSETS="s3://np-ops/cooking/ruby-go-nyts-wrapper/"
SOURCE_ASSETS="."
AWS_OPTIONS="--acl public-read --region us-east-1"

echo -e "\nDownloading images from s3 ...\n"
aws s3 sync $TARGET_ASSETS $SOURCE_ASSETS $AWS_OPTIONS --exclude "*" --include "*.so" --include "*.h"