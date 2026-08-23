#!/bin/bash
set -euxo pipefail

curl -fsSL https://get.docker.com | sh
systemctl enable --now docker

mkdir -p /opt/rackula
curl -fsSL https://raw.githubusercontent.com/RackulaLives/Rackula/main/docker-compose.yml \
  -o /opt/rackula/docker-compose.yml

cd /opt/rackula
docker compose up -d