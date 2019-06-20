create random process
formInstance_withValues: anArray in: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_allTypes_name:amount:time:timeStamp:date:bool:
			withValues: anArray 
			definitionNamed: 'all-field-types' 
			app: 'ue' 
			definitionMethod: #formDefinition_all_types
			in: aBpmProcessInstance