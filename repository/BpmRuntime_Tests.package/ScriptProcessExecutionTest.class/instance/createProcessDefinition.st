other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'Process with Scripts'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_process_with_script
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition