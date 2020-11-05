# pre-commit terraform fmt

A pre-commit hook to check the formatting of terraform files pre commit. This hook
requires terraform is present on the system path to work.

It currently does a hard format (changes the state of the files on disk). A future function should
be allowing a `-check` option.

## Installation

Add the following to the `.pre-commit-config.yaml` file.

```
-   repo: https://github.com/envelop-risk/pre-commit-terraform-fmt
    rev: v1.0.0
    hooks:
    -   id: terraform-fmt
```

The following hooks, while not required are highly recommended.
```
-   repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v3.3.0
    hooks:
    -   id: trailing-whitespace
    -   id: end-of-file-fixer
    -   id: check-yaml
    -   id: check-added-large-files
```

## Running the hooks

When first installing the hook it is recommended to run the hook on all files. This can be done
with the command.

```
pre-commit run -a terraform-fmt
```
