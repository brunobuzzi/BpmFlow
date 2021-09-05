other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'all-type-conditions'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_all_conditions_type
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition