convenience
getFromDefinitionTemplateMethoNameFor: seasideObjectOrOrbeonForm

	^'generatedFormDefinition_', (seasideObjectOrOrbeonForm formName withWithespaceRemoved replaceAll: $- with: $_), '_', (seasideObjectOrOrbeonForm id clone withWithespaceRemoved replaceAll: $- with: $_)