#!/bin/bash

# Notes for aws cli command

# Debug aws codecommit credential-helper
# NOTE: The '--debug' option here puts the aws cli into debug-logging mode
repo_name="example-repo"
region="us-west-2"
echo -e "protocol=https\npath=/v1/repos/${repo_name}\nhost=git-codecommit.${region}.amazonaws.com" \
  | aws codecommit credential-helper get --debug

