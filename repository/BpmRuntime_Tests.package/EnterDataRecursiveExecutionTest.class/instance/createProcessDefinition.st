other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'recursive-data'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_Enter_Recursive_Data
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition