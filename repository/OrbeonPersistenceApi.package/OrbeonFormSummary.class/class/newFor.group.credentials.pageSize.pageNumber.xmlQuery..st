other
newFor: user group: group credentials: credentials pageSize: pageSize pageNumber: pageNumber xmlQuery: xmlDocument

	^self new initialize
		setUser: user group: group credentials: credentials pageSize: pageSize pageNumber: pageNumber xmlQuery: xmlDocument;
		yourself