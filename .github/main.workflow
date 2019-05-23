workflow "Pipeline" {
  on = "push"
  resolves = "Test"
}

action "Lint" {
  uses = "./.github/action/ansible"
  args = ["ansible-lint", "."]
}

action "Test" {
  needs = "Lint"
  uses = "./.github/action/ansible"
  args = ["ansible-playbook", "tests/test.yml", "-i", "tests/inventory", "--syntax-check"]
}
