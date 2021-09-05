other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'Process with Deferred Scripts'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_process_with_deferred_script
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition