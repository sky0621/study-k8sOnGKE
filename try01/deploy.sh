#!/usr/bin/env bash
set -euox pipefail
SCRIPT_DIR=$(dirname "$0")
echo "${SCRIPT_DIR}"
cd "${SCRIPT_DIR}"

project=$(gcloud config get-value project)
if [[ -z "${project}" ]]; then
  echo -n "need project"
  exit 1
fi
echo "${project}"

sed -i -e "s/MY_GCP_PROJECT_ID/${project}/" deployment.yaml

kubectl apply -f deployment.yaml

sed -i -e "s/${project}/MY_GCP_PROJECT_ID/" deployment.yaml
