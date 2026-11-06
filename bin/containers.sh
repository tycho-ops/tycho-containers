#!/usr/bin/env bash
# tycho-containers - Tycho Containers & Single-Node Lifecycle Management
# Part of Tycho (https://git.qtrn.io/tycho)

set -euo pipefail

CMD="${1:-help}"

case "$CMD" in
    install|up)
        echo -e "\033[32m[tycho-containers]\033[0m Starting service: ${2:-default}"
        ;;
    down|stop)
        echo -e "\033[33m[tycho-containers]\033[0m Stopping service: ${2:-default}"
        ;;
    ps)
        podman ps --filter "label=com.docker.compose.project"
        ;;
    stats)
        podman stats --no-stream
        ;;
    logs)
        shift
        echo -e "\033[34m[tycho-containers]\033[0m Logs for: ${1:-all}"
        ;;
    *)
        echo "Usage: tycho containers <install|up|down|ps|stats|logs> [options]"
        exit 0
        ;;
esac
