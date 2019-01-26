# GitHub Action for Mix

This Action for [Mix](https://hexdocs.pm/mix/Mix.html) enables arbitrary actions with this `mix` command-line client.

## Usage

An example workflow to run `mix test` is as follows:

```hcl
workflow "Run tests" {
  on = "push"
  resolves = "Test"
}

action "Test" {
  uses = "jclem/actions/mix@master"
  args = "test"
  env = {
    MIX_ENV = "test"
  }
}
```

Note that by default, `$MIX_ENV` is set to "dev", so for running tests, you'll want to set it to "test".
