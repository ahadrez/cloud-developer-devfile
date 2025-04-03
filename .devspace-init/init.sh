#!/bin/bash

# Add aliases to .bash_profile
cat <<EOF >> ~/.bash_profile
alias gcloud_auth="gcloud auth login --no-launch-browser --update-adc"
alias gcloud_project="gcloud config set project"
alias gcloud_info="gcloud info"
EOF
