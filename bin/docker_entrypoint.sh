#!/bin/bash

set -euo pipefail

if [ $# -eq 0 ]; then
  exec swapd --p2p-bind-ip=0.0.0.0 --p2p-bind-port=19949 --rpc-bind-ip=0.0.0.0 --rpc-bind-port=19950 --non-interactive --confirm-external-bind
else
  exec "$@"
fi
