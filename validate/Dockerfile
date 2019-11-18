FROM kinzal/pr:latest

LABEL "maintainer"="k-kinzal <log@logn.in>"
LABEL "repository"="https://github.com/k-kinzal/pr-action"
LABEL "com.github.actions.name"="PR rule validation"
LABEL "com.github.actions.description"="Validate whether a rule matches PR or an error has occurred."
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="red"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
