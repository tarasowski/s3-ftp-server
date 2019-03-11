#!/bin/bash
# Author: Dimitri Tarasowski
# Date created: 06/03/2019
# Description: Deploys the s3ec2 instance
# Date modified: 06/03/2019

STACK='your-s3-ftp-server-stack-name'

if [ -z ${1} ]
then
  echo 'SÂ3 FTPServer Creation Failed'
  echo 'Pass the command argument update OR create'
  exit 1
  fi

if [ ${1} == 'create' ]
then
  echo 'Stack creation process has been started'
  echo
  aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name $STACK \
    --template-body file://ftp-server.yaml
    fi    

if [ ${1} == 'update' ]
then
  echo 'Stack update process has been started'
  echo
  aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name $STACK \
    --template-body file://ftp-server.yaml
    fi    
