#!/bin/bash
#
WORKDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$WORKDIR"
# Path relative to this Pepo
SERVER_HOME="$(find * -type d -maxdepth 0 | grep -E "^([0-9\.]+|SNAPSHOT|snapshots)$")"
find $SERVER_HOME -type d | sed 's|/$||g' | xargs -I{} touch "{}/index.md"
