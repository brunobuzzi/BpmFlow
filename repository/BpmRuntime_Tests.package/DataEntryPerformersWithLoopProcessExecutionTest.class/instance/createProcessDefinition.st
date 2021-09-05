other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'multi-role-with-loop'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_dataEntry_performers_with_loop
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition