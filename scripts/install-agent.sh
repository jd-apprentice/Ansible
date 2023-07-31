#!/bin/bash

ARCH="$1"
GCLOUD_RW_API_KEY="$2"

if [ "$ARCH" != "amd64" ] && [ "$ARCH" != "arm64" ]; then
    echo "Invalid ARCH selected. Please select either amd64 or arm64"
    exit 1
fi


if [ -z "$GCLOUD_RW_API_KEY" ]; then
    echo "Invalid API key entered. Please enter a valid API key"
    exit 1
fi

ARCH="$ARCH" GCLOUD_HOSTED_METRICS_URL="https://prometheus-prod-13-prod-us-east-0.grafana.net/api/prom/push" GCLOUD_HOSTED_METRICS_ID="977587" GCLOUD_SCRAPE_INTERVAL="60s" GCLOUD_HOSTED_LOGS_URL="https://logs-prod-006.grafana.net/loki/api/v1/push" GCLOUD_HOSTED_LOGS_ID="591410" GCLOUD_RW_API_KEY="$GCLOUD_RW_API_KEY" /bin/sh -c "$(curl -fsSL https://storage.googleapis.com/cloud-onboarding/agent/scripts/grafanacloud-install.sh)"