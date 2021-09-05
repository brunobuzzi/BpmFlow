other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'reuse-form'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_reuseExternalObject
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition