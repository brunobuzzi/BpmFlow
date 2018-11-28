other
newBasedOn: aBpmArtifactDefinition inProcess: aBpmProcessInstance

	^(self newBasedOn: aBpmArtifactDefinition)
		process: aBpmProcessInstance;
		yourself