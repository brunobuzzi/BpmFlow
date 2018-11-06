other
newForApplications: anOrderedCollection in: aBpmEnvironment

	^super new initialize
		applications: anOrderedCollection;
		bpmEnvironment: aBpmEnvironment;
		yourself