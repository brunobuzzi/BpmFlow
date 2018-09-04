bpm environments
getApplicationsIn: aBpmEnvironment
	"The receiver answer a collection with all <Applications> that has a related role <aBpmRole> with the receiver in environment <aBpmEnvironment>"

	^((roles collect: [:eachRole | eachRole application]) asSet select: [:each | each bpmEnvironment == aBpmEnvironment]) asOrderedCollection