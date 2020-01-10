import json
import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']
).get_hosts('all')


def test_agents_ready(host):
    cmd = host.run('curl 172.17.0.2:8500/v1/catalog/nodes')

    nodes = json.loads(cmd.stdout)

    assert len(nodes) == 1
