execution
createNewTransition: aBpmTransitionDefinition from: aBpmArtifactInstance
	"The receiver creates a new concrete transition based on the definition <aBpmTransitionDefinition> and this transition has been started from the artifact <aBpmArtifactInstance>"
	| newTransition nextArtifactDefinition nextArtifactInstance |

	newTransition := BpmTransitionInstance newBasedOn: aBpmTransitionDefinition.
	nextArtifactDefinition := aBpmTransitionDefinition endArtifact.
	"create the end artifact of the new transition"
	nextArtifactInstance := nextArtifactDefinition createInstanceOn: self parentArtifact: aBpmArtifactInstance.

	newTransition startArtifact: aBpmArtifactInstance; "also add <newTransition> as an outgoing transition to <aBpmArtifactInstance>"
		endArtifact: nextArtifactInstance. "also add <newTransition> as an incomming transition to <nextArtifactInstance>"

	transitions add: newTransition.

	nextArtifactInstance performInitializationOn: self. "the artifact is initialized"

	^newTransition