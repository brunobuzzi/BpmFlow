other
parentLanes

	parentWorkflow ifNotNil: [^parentWorkflow parentLanes].

	parentPool ifNil: [^#()].

	^parentPool lanes