form instances
formInstance_emit_visa

	^testRoot
			buildFormInstanceNamed: 'emit-visa'
			withXml: self newInstanceTemplate formInstance_ue_emit_visa_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_emit_visa 
			in: 'ue' 
			process: procInstance