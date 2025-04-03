#!/bin/bash

echo "Updating ~/.bashrc with gcloud aliases..."

cat <<EOF >> ~/.bashrc

# gcloud aliases
alias gcloud_auth="gcloud auth login --no-launch-browser --update-adc"
alias gcloud_project="gcloud config set project"
alias gcloud_info="gcloud info"
EOF

echo "Done updating ~/.bashrc"
