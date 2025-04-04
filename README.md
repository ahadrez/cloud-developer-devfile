# Cloud Developer Devfile

This repository contains a Devfile definition for setting up a cloud development environment tailored for Terraform and GCP-based workflows.

## Overview

The Devfile configures a containerized workspace using [OpenShift Dev Spaces](https://developers.redhat.com/products/dev-spaces/overview) or [Eclipse Che](https://www.eclipse.org/che/), pre-loaded with tools and settings necessary for cloud infrastructure development with Terraform.

## Features

- 🌐 **Terraform Environment**: Uses a base image from `quay.io` with Terraform and supporting tools pre-installed.
- 🧰 **Preloaded Projects**:
  - [`terraform-mirrored-providers`](https://github.com/ahadrez/terraform-mirrored-providers): Contains mirrored Terraform providers and modules.
  - [`vm-demo-gcp`](https://github.com/ahadrez/vm-demo-gcp): A demo module to provision virtual machines on Google Cloud Platform.
- 🔐 **Custom CA Configuration**: Automatically sets up a custom CA certificate for `gcloud` when behind a proxy.
- 🧩 **VS Code Terraform Extension**: Preloaded for syntax highlighting and Terraform support.

## Devfile Specification

- **Schema Version**: 2.2.2
- **Base Image**: `quay.io/upstream/cloud-developer-image:ubi9-latest`
- **Resources**:
  - CPU: 1 (request), 2 (limit)
  - Memory: 1Gi (request), 2Gi (limit)

## Environment Variables

- `TF_CLI_CONFIG_FILE`: Points to a custom `.terraformrc` configuration.
- `DEFAULT_EXTENSIONS`: Path to pre-installed VS Code extensions.

## Post-Start Automation

After the workspace starts, it runs:

```bash
gcloud config set core/custom_ca_certs_file /etc/pki/ca-trust/extracted/openssl/ca-bundle.trust.crt
