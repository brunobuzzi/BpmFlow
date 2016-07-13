Updating
hasParentProcess

	parentPool ifNotNil: [^parentPool hasParentProcess].

	parentWorkflow ifNotNil: [^true].

	^false