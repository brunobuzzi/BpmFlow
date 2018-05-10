subclass responsibility
getCurrentCollection

	searchApplied ifFalse: [^lateralCollection].

	^searchResult