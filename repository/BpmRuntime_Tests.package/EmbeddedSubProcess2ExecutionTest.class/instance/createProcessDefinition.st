other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'multi-embedded'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_Embedded_Embedded_Proc
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition