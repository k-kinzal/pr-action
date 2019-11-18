# PRs GitHub Actions

This GitHub Action runs the [pr](https://github.com/k-kinzal/pr) for operates multiple Pull Request.

## Usage

### Merge

Below is a simple snippet to use this action. A [live example](https://github.com/k-kinzal/pr-action/blob/master/.github/workflows/automerge.yaml) is also available for this repository.

```yaml
name: Automerge
on:
  pull_request:
    types:
    - assigned
    - unassigned
    - labeled
    - unlabeled
    - opened
    - edited
    - reopened
    - synchronize
    - ready_for_review
    - review_requested
    - review_request_removed
  pull_request_review:
    types:
    - submitted
  pull_request_review_comment:
    types:
    - created
    - edited
  status: {}
jobs:
  merge:
    name: Summary
    runs-on: ubuntu-18.04
    steps:
      - uses: k-kinzal/pr-action/check@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          args: --merge -l "state == `\"open\"`" -l "user.login == `\"github-actions[bot]\"`"
```

See [here](https://github.com/k-kinzal/pr) for what to specify for args.
If args is omitted, try to merge all PRs.

### Debug

```yaml
name: Automerge from PR Event
on:
  pull_request
jobs:
  merge:
    name: debug
    runs-on: ubuntu-18.04
    steps:
      - uses: k-kinzal/pr-action/validate@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          args: -l "state == `\"open\"`" -l "user.login == `\"github-actions[bot]\"`"
```

**output**
```
[x] state == `"open"`: 100 PRs matched the rules
[ ] user.login == `"github-actions[bot]"`: no PR matches the rule
[...]
```

If you need debugging, you can get a rule match and list of targeted PRs by passing `k-kinzal/pr-action/validate`.
