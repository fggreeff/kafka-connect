#!/bin/bash

if [ -z $ENVIRONMENT ]
then
  "Environment must be set"
  exit 1
fi

if [ $ENVIRONMENT = "local" ]
then

  export TF_CONFIG="file-local"
  export TF_VAR_kafka_connect_url="http://kafka-connect:8083"
  echo "Not assuming role for local deploy"
  return 0
else
  export TF_CONFIG="example-aws-main-acc"
fi
