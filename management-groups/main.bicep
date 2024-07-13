targetScope = 'tenant'

param tenantRootGroup string

param mgProjectRoot string

module rootMG '../modules/create-management-group.bicep' = {
  name: 'rootMG-${mgProjectRoot}'
  scope: tenant()
  params: {
    mgName: mgProjectRoot
    mgParentId: tenantRootGroup
  }
}

