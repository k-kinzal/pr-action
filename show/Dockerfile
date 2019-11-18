FROM kinzal/pr:0.2.1

LABEL "maintainer"="k-kinzal <log@logn.in>"
LABEL "repository"="https://github.com/k-kinzal/pr-action"
LABEL "com.github.actions.name"="Rule-based PR show"
LABEL "com.github.actions.description"="Show pull requests that match the rule"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="green"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
