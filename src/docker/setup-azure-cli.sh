#!/bin/bash
set -e

# Initialize Azure CLI configuration
az config set extension.use_dynamic_install=yes_without_prompt

# Install required Azure CLI extensions
echo "=== Installing Azure CLI Extensions ==="
az extension add --name rdbms-connect --yes || true

echo "=== Verifying Azure CLI Extensions ==="
az extension show --name rdbms-connect --output table

echo "=== Testing Azure CLI MySQL Commands ==="
az mysql flexible-server --help
