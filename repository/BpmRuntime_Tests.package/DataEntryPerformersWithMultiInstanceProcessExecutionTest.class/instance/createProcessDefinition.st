other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'multi-role-with-multi-instance'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_dataEntry_performers_with_multiinstance
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition