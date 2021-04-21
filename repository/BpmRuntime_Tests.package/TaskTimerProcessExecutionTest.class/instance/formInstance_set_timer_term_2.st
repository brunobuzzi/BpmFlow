form instance
formInstance_set_timer_term_2

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_set_timer_term_2
		definitionNamed: 'set-timer-term'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_set_timer_term
		in: procInstance