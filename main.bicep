resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'sebassemstorage0004'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
}

resource policy 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
  name: 'Audit secure transfer'
  scope: subscriptionResourceId('Microsoft.Resources/resourceGroups', resourceGroup().name)
  properties: {
     policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/404c3081-a854-4457-ae30-26a93ef643f9'
  }
}
