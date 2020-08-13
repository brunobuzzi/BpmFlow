execution
createNewTransition: aBpmTransitionDefinition from: aBpmArtifactInstance
	"The receiver creates a new concrete transition based on the definition <aBpmTransitionDefinition> and this transition has been started from the artifact <aBpmArtifactInstance>.
	If the target <BpmArtifactDefinition> has multi instance then create the configured number of tasks otherwise create only one task"
	| newTransition nextArtifactDefinition nextArtifactInstance numberOfTasks |

	numberOfTasks := 1.
	aBpmTransitionDefinition endArtifactDo: [:artifact | nextArtifactDefinition := artifact].

	nextArtifactDefinition isMultiInstanceLoop ifTrue: [numberOfTasks := (nextArtifactDefinition evaluateLoopIn: self) result].

	1 to: numberOfTasks do: [:index |
		newTransition := BpmTransitionInstance newBasedOn: aBpmTransitionDefinition.
		newTransition parentTransition: aBpmArtifactInstance parentTransition.

		"create the end artifact of the new transition"
		nextArtifactInstance := nextArtifactDefinition createInstanceOn: self parentArtifact: aBpmArtifactInstance.
		nextArtifactInstance parentTransition: newTransition. 

		newTransition startArtifact: aBpmArtifactInstance; "also add <newTransition> as an outgoing transition to <aBpmArtifactInstance>"
			endArtifact: nextArtifactInstance. "also add <newTransition> as an incomming transition to <nextArtifactInstance>"

		transitions add: newTransition.

		nextArtifactInstance performInitializationOn: self. "the artifact is initialized"
	].

	^newTransition