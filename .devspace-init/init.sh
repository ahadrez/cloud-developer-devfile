#!/bin/bash

# Add aliases to .bash_profile
cat <<EOF >> ~/.bash_profile
alias gauth="gcloud auth login --no-launch-browser --update-adc"
alias gproject="gcloud config set project"
alias ginfo="gcloud info"
EOF

# Source .bashrc if it exists (some systems rely on this chaining)
grep -q ".bashrc" ~/.bash_profile || echo '[ -f ~/.bashrc ] && source ~/.bashrc' >> ~/.bash_profile
