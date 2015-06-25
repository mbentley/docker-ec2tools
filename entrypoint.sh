#!/bin/bash

set -e

if [ -z "$AWS_ACCESS_KEY" ]
then
  echo "Please export AWS_ACCESS_KEY environment variable."
  exit 1
fi

if [ -z "$AWS_SECRET_KEY" ]
then
  echo "Please export AWS_SECRET_KEY environment variable."
  exit 1
fi

if [ -z "$REGION" ]
then
  echo "Please export REGION environment variable."
  exit 1
fi

export EC2_URL=https://ec2.$REGION.amazonaws.com/
exec "${@}"
