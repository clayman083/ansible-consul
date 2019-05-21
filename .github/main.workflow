workflow "Pipeline" {
  on = "push"
  resolves = ["Lint", "Test"]
}

action "Lint" {
  uses = "./.github/action/ansible"
  runs = ["ansible-lint", "."]
}

action "Test" {
  uses = "./.github/action/ansible"
  runs = ["ansible-playbook", "tests/test.yml", "-i", "tests/inventory", "--syntax-check"]
}
