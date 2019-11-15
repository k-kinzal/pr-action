#!/bin/sh

if [ "$PR_EXIT_CODE" = "true" ]; then
  exit_code="--exit-code"
fi

if [ "$PR_NO_EXIT_CODE" = "true" ]; then
  no_exit_code="--no-exit-code"
fi

if [ -n "$PR_RATE" ]; then
  rate="--rate $PR_RATE"
fi

exec /usr/local/bin/pr $exit_code $no_exit_code $rate check "${GITHUB_REPOSITORY}" "$@"

