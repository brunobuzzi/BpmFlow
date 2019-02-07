other
hasSelectedApplication

	^(searchValues includesKey: 'application') and: [(searchValues at: 'application') notEmpty]