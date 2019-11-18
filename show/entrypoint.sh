#!/bin/sh

if [ "${PR_EXIT_CODE}" = "true" ]; then
  exit_code_flag="--exit-code"
fi

if [ "${PR_NO_EXIT_CODE}" = "true" ]; then
  no_exit_code_flag="--no-exit-code"
fi

if [ -n "${PR_RATE}" ]; then
  rate_flag="--rate $PR_RATE"
fi

exec /usr/local/bin/pr "${exit_code_flag}" "${no_exit_code_flag}" "${rate_flag}" show "${GITHUB_REPOSITORY}" "$@"
