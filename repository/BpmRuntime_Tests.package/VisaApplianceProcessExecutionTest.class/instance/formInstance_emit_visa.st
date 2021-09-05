form instances
formInstance_emit_visa

	^testRoot
			buildFormInstanceNamed: 'emit-visa'
			withXml: testRoot newInstanceTemplate formInstance_ue_emit_visa_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_emit_visa 
			in: 'ue' 
			process: procInstance