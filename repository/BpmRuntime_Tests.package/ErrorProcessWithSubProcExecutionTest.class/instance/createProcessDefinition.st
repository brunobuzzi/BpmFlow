other
createProcessDefinition

	^testRoot 
			newBpmProcessesDefinitionNamed: #('dashboard-error-sub-proc' 'form-process') 
			withXpdlStrings: (Array with: XPDLProcessDefinitionTemplate xpdlDefinition_process_error_main_proc with: XPDLProcessDefinitionTemplate xpdlDefinition_process_error_sub_proc) 
			multiplePools: false
			inEnvironmentNamed: #('env-ue' 'env-ue') 
			inApplicationNamed: #('ue' 'ue')