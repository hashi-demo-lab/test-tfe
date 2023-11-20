## Place all your terraform resources here
#  Locals at the top (if you are using them)
#  Data blocks next to resources that are referencing them
#  Reduce hard coded inputs where possible. They are used below for simplicity to show structure

data "tfe_organization" "hvd" {
  name = "hvd"
}

resource "tfe_agent_pool" "test-agent-pool" {
  name         = "my-agent-pool-name"
  organization = tfe_organization.test-organization.name
}

resource "tfe_workspace" "test" {
  name           = "my-test-workspace-name"
  organization   = tfe_organization.hvd.name
  agent_pool_id  = tfe_agent_pool.test-agent-pool.id
  execution_mode = "agent"
}