#!/bin/sh

exec /usr/local/bin/pr validate "${GITHUB_REPOSITORY}" "$@"

