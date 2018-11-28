responsibility
removeResponsibility: aBpmArtifactDefinition

	^tasks removeKey: aBpmArtifactDefinition name 
				ifAbsent: [NoSuchActivitytException signal: 'No such Activity Definition in [', aBpmArtifactDefinition name, ']']