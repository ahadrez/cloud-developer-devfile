#!/bin/bash

# Define useful gcloud aliases
echo 'alias gauth="gcloud auth login --no-launch-browser --update-adc"' >> ~/.bashrc
echo 'alias gproject="gcloud config set project"' >> ~/.bashrc
echo 'alias ginfo="gcloud info"' >> ~/.bashrc

# Source .bashrc to enable aliases immediately
source ~/.bashrc

