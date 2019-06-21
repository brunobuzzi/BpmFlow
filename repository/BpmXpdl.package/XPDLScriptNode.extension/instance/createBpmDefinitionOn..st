*bpmxpdl
createBpmDefinitionOn: aBpmProcessDefinition
	"The receiver answer a sub instance of <BpmArtifactDefinition> that represent the XPDL element (the receiver) in the BPM model"
	| activityDefinition | 

	activityDefinition := super createBpmDefinitionOn: aBpmProcessDefinition.

	activityDefinition scriptCode: script.

	((self extendedValueOf: 'runOnBackground') = 'true') ifTrue: [activityDefinition beDeferredExecuted].

	^activityDefinition