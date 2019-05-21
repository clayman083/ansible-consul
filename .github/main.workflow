workflow "Test pipeline" {
  on = "push"
  resolves = ["test"]
}

action "test" {
  uses = "./.github/action/test"
  runs = ["ansible-playbook", "tests/test.yml", "-i", "tests/inventory", "--syntax-check"]
}
