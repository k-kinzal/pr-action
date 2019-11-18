FROM kinzal/pr:0.2.1

LABEL "maintainer"="k-kinzal <log@logn.in>"
LABEL "repository"="https://github.com/k-kinzal/pr-action"
LABEL "com.github.actions.name"="Rule-based PR check"
LABEL "com.github.actions.description"="Update PR status to rule base and execute action if it matches."
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="red"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
