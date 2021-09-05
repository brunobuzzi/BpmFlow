other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'default-transition-process'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_default_transition
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition