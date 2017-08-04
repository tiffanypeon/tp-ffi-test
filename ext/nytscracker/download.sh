#DIR=$(cd `dirname "$0"` && cd .. && pwd)
#TARGET_ASSETS="s3://np-ops/cooking/ruby-go-nyts-wrapper/"
#SOURCE_ASSETS="."
#AWS_OPTIONS="--acl public-read --region us-east-1"

#echo -e "\nDownloading images from s3 ...\n"
#aws s3 sync $TARGET_ASSETS $SOURCE_ASSETS $AWS_OPTIONS --exclude "*" --include "*.so" --include "*.h"

curl -sS -o nytscracker_linux.so https://s3.amazonaws.com/np-ops/cooking/ruby-go-nyts-wrapper/nytscracker_linux.so
curl -sS -o nytscracker_linux.h https://s3.amazonaws.com/np-ops/cooking/ruby-go-nyts-wrapper/nytscracker_linux.h

curl -sS -o nytscracker_macosx.so https://s3.amazonaws.com/np-ops/cooking/ruby-go-nyts-wrapper/nytscracker_macosx.so
curl -sS -o nytscracker_macosx.h https://s3.amazonaws.com/np-ops/cooking/ruby-go-nyts-wrapper/nytscracker_macosx.h

