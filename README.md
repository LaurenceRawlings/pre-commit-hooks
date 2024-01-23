# Pre-Commit Hooks

Various custom [pre-commit](https://pre-commit.com/) hooks.

## Hooks

- [Laravel](#laravel)
  - [Pint](#pint)
  - [Tests](#tests)

## Usage

Add the code blocks below to your `.pre-commit-config.yaml` file.

### Laravel

Adds support for running [Laravel Pint](https://laravel.com/docs/10.x/pint) and
[Tests](https://laravel.com/docs/10.x/testing#running-tests) as pre-commit hooks in a Laravel project.

#### Pint

```yaml
- repo: https://github.com/LaurenceRawlings/pre-commit-hooks
  rev: v1.0.0
  hooks:
    - id: laravel-pint
      args: ["--test"] # disables automatic fixing
```

#### Tests

```yaml
- repo: https://github.com/LaurenceRawlings/pre-commit-hooks
  rev: v1.0.0
  hooks:
    - id: laravel-test
      args: ["--parallel"] # enables parallel testing
```

> Parallel testing requires [`brianium/paratest`](https://packagist.org/packages/brianium/paratest)
