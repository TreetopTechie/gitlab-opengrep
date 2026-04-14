# gitlab-opengrep

Opengrep rules for scanning GitLab CI/CD pipeline files for security issues.

## Rules

| Rule | Description |
|------|-------------|
| `gitlab/component-not-hash-pinned` | Detects GitLab CI components not pinned to a full commit SHA |

## Prerequisites

Install [opengrep](https://github.com/opengrep/opengrep):

```bash
curl -fsSL https://raw.githubusercontent.com/opengrep/opengrep/main/install.sh | bash
```

## Usage

### Scan a GitLab CI file

```bash
make scan TARGET=path/to/.gitlab-ci.yml
```

### Run tests

```bash
make test
```

### Validate rule syntax

```bash
make validate
```

## Adding New Rules

1. Create a rule YAML file under `rules/<category>/<rule-name>.yaml`
2. Create a matching test file at `rules/<category>/<rule-name>.test.yaml`
3. Annotate test lines with `# ruleid: <rule-id>` (expected finding) or `# ok: <rule-id>` (expected no finding)
4. Run `make test` to verify
