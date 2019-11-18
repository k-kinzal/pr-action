# PRs GitHub Actions

This GitHub Action runs the [pr](https://github.com/k-kinzal/pr) for operates multiple Pull Request.

## Usage

### Merge

Below is a simple snippet to use this action. A [live example](https://github.com/k-kinzal/pr-action/blob/master/.github/workflows/automerge.yaml) is also available for this repository.

```yaml
name: Automerge from PR Event
on:
  pull_request:
    types:
      - labeled
      - unlabeled
      - synchronize
      - opened
      - edited
      - ready_for_review
      - reopened
      - unlocked
  pull_request_review:
    types:
      - submitted
  status: {}
jobs:
  merge:
    name: merge
    runs-on: ubuntu-18.04
    steps:
      - uses: k-kinzal/pr-action/merge@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          args: -l "state == `\"open\"`" -l "user.login == `\"github-actions[bot]\"`"
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
      - uses: k-kinzal/pr-action/show@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          args: -l "state == `\"open\"`" -l "user.login == `\"github-actions[bot]\"`"
```

If you need debugging, you can get a list of targeted PRs by passing `k-kinzal/pr-action/show`.
