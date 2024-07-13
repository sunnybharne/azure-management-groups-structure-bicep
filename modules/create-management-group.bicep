targetScope = 'tenant'

@description('The name of the management group.')
param mgName string

@description('The ID of the parent management group.')
param mgParentId string

resource symbolicname 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: 'mg-${mgName}'
  scope: tenant()
  properties: {
    details: {
      parent: {
        id: mgParentId
      }
    }
    displayName: mgName
  }
}
