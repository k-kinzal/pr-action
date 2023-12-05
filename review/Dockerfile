FROM kinzal/pr:0.3.1

LABEL "maintainer"="k-kinzal <log@logn.in>"
LABEL "repository"="https://github.com/k-kinzal/pr-action"
LABEL "com.github.actions.name"="Rule-based PR merge"
LABEL "com.github.actions.description"="Merge pull requests that match the rule"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="red"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
