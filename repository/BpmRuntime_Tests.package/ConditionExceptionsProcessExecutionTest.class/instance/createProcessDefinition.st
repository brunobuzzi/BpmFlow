other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'condition-exceptions'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_condition_Exceptions
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition