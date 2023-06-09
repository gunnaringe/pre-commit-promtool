[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

# pre-commit-promtool

Small pre-commit hook to validate prometheus rules files with promtool.

## Rules

### `check-rules`

Checks if the prometheus rules files are valid.

It will automatically extract the `.spec` key from the yaml, which makes it able to parse Kubernetes `PrometheusRule` manifests. 
