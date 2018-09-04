bpm environments
hasAccessTo: aBpmEnvironment
	"The receiver answer whether or not has access to environment <aBpmEnvironment>"

	^roles anySatisfy: [:each | each bpmEnvironment == aBpmEnvironment]