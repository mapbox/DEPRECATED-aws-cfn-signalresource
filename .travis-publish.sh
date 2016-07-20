#!/bin/bash

set -eu
regions="
eu-central-1
eu-west-1
us-east-1
us-west-1
us-west-2
ap-northeast-1
ap-northeast-2
ap-south-1
ap-southeast-1
ap-southeast-2
"

if git describe --tags --exact-match 2> /dev/null; then
    pip install awscli
    tag=$(git describe --tags --exact-match)
    aws s3 cp --acl public-read --region us-east-1 "$(dirname $0)/bin/aws-cfn-signalresource" s3://mapbox/apps/aws-cfn-signalresource/$tag
    for region in $regions; do
        aws s3 cp --acl public-read --region $region "$(dirname $0)/bin/aws-cfn-signalresource" s3://mapbox-$region/apps/aws-cfn-signalresource/$tag
    done
fi

