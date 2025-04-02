#!/bin/bash

# Add aliases to .bash_profile
cat <<EOF >> ~/.bash_profile
alias gauth="gcloud auth login --no-launch-browser --update-adc"
alias gproject="gcloud config set project"
alias ginfo="gcloud info"
EOF
