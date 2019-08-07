#!/usr/bin/env bash

# Configuration
CodeCommitRepoName=auth-authapi
StackName=authapi-build-stack
BucketName=lambda-auth-artifacts-kyleesc

# Package and deploy
aws cloudformation package \
--template-file service.yaml \
--s3-bucket ${BucketName} \
--output-template-file packaged-${StackName}-template.yaml

aws cloudformation deploy \
--stack-name ${StackName} \
--template-file packaged-${StackName}-template.yaml \
--parameter-overrides \
"CodeCommitRepoName=${CodeCommitRepoName}" \
--s3-bucket ${BucketName} \
--capabilities CAPABILITY_IAM
