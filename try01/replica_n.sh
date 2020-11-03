#!/usr/bin/env bash
set -euox pipefail
SCRIPT_DIR=$(dirname "$0")
echo "${SCRIPT_DIR}"
cd "${SCRIPT_DIR}"

num=${1:-}

if [ -z "${num}" ]; then
  echo -n "input replicas number: "
  read num
fi

kubectl scale deployment golang-app-try01 --replicas="${num}"
