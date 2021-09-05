other
createProcessDefinition

	^testRoot 
			newBpmProcessesDefinitionNamed: #('ReusableEmbeddedProc' 'reusable-sub-proc') 
			withXpdlStrings: (Array with: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Embedded_Proc with: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Sub_Proc) 
			multiplePools: false
			inEnvironmentNamed: #('env-ue' 'env-ue') 
			inApplicationNamed: #('ue' 'ue')