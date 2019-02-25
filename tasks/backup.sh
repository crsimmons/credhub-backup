#!/bin/bash

set -euo pipefail

chmod +x concourse-up-release/concourse-up-linux-amd64
eval "$(./concourse-up-release/concourse-up-linux-amd64 info --region "${REGION}" --env "${DEPLOYMENT_NAME}")"
credhub export -f "exported-file/${DEPLOYMENT_NAME}-credhub.yml"
