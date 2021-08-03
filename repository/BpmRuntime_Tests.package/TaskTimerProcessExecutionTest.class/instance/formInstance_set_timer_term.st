form instance
formInstance_set_timer_term

	^testRoot
			buildFormInstanceNamed: 'set-timer-term' 
			withXml: self newInstanceTemplate formInstance_ue_set_timer_term_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_set_timer_term 
			in: 'ue' 
			process: procInstance