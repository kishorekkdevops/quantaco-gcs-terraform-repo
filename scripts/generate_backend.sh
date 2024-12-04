#!/bin/bash

# Directory where the .tfvars files are stored
USER_VARS_DIR="users"

# Backend bucket
STATE_BUCKET="qn-bucket"

# Loop through all .tfvars files
for USER_FILE in ${USER_VARS_DIR}/*.tfvars; do
  USER=$(basename ${USER_FILE} .tfvars)

  # Generate backend configuration for each user
  cat <<EOF > ${USER_VARS_DIR}/${USER}_backend.tf
    bucket  = "${STATE_BUCKET}-${USER}"
    prefix  = "terraform/state/${USER}"
EOF
done

echo "Backend configurations generated successfully for all users."
