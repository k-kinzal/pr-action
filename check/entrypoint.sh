#!/bin/sh

if [ "$PR_EXIT_CODE" = "true" ]; then
  args=" --exit-code"
fi

if [ "$PR_NO_EXIT_CODE" = "true" ]; then
  args=" --no-exit-code"
fi

if [ -n "$PR_RATE" ]; then
  args=" --rate $PR_RATE"
fi

exec /usr/local/bin/pr "$args" check "${GITHUB_REPOSITORY}" "$@"

