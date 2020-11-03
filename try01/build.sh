#!/usr/bin/env bash
set -euox pipefail
SCRIPT_DIR=$(dirname "$0")
echo "${SCRIPT_DIR}"
cd "${SCRIPT_DIR}"

gcloud builds submit --config cloudbuild.yaml .
