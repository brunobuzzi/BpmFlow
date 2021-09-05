form instance
formInstance_set_timer_term

	^testRoot
			buildFormInstanceNamed: 'set-timer-term' 
			withXml: testRoot newInstanceTemplate formInstance_ue_set_timer_term_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_set_timer_term 
			in: 'ue' 
			process: procInstance