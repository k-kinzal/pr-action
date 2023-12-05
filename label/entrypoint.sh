#!/bin/sh

if [ "${PR_EXIT_CODE}" = "true" ]; then
  args="${args} --exit-code"
fi

if [ "${PR_NO_EXIT_CODE}" = "true" ]; then
  args="${args} --no-exit-code"
fi

if [ -n "${PR_RATE}" ]; then
  args="${args} --rate $PR_RATE"
fi

exec /usr/local/bin/pr ${args} label "${GITHUB_REPOSITORY}" "$@"
