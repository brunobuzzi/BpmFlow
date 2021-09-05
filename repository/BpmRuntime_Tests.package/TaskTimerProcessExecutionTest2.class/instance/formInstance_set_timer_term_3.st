form instance
formInstance_set_timer_term_3

	^testRoot
			buildFormInstanceNamed: 'set-timer-term' 
			withXml: testRoot newInstanceTemplate formInstance_ue_set_timer_term_3 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_set_timer_term 
			in: 'ue' 
			process: procInstance