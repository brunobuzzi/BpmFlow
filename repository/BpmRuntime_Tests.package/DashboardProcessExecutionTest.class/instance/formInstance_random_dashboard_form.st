other
formInstance_random_dashboard_form
	| values directClient confirmed |

	directClient := (Array with: true with: false) randomPeek.
	confirmed := (Array with: true with: false) randomPeek.
	values := (OrderedCollection new add: 35000; add: 8000; add: 1200; add: confirmed; add: directClient; add: (self randomGenerator peekRandomCountry); add: ''; add: (self randomGenerator peekRandomIndustry); yourself) asArray.
	
	^self formCreatorClass 
				createFormInstance: #form_dashboard_form:cost:deductible:confirmed:directClient:country:city:industry: 
				withValues: values 
				definitionNamed: 'dashboard-form' 
				app: 'ue' 
				definitionMethod: #formDefinition_dashboard_form 
				in: procInstance