other
newWith: anOrbeonApplication definition: formDefinition version: version user: user group: group credentials: credentials pageSize: pageSize pageNumber: pageNumber xmlQuery: xmlDocument

	^(self newFor: user group: group credentials: credentials pageSize: pageSize pageNumber: pageNumber xmlQuery: xmlDocument)
			setApplication: anOrbeonApplication;
			setDefinition: formDefinition;
			setVersion: version;
			yourself