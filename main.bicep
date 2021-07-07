resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'sebassemstorage0004'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    supportsHttpsTrafficOnly: true
  }
}
