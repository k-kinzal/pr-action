#!/bin/sh

exec /usr/local/bin/pr merge "${GITHUB_REPOSITORY}" "$@"

