other
formInstance_withValues: anArray in: aBpmProcessInstance

	^self formCreatorClass 
				createFormInstance: #form_dashboard_form:cost:deductible:confirmed:directClient:country:city:industry: 
				withValues: anArray 
				definitionNamed: 'dashboard-form' 
				app: 'ue' 
				definitionMethod: #formDefinition_dashboard_form 
				in: procInstance