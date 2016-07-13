running
createNewTransition: aBpmTransitionDefinition from: aBpmArtifactInstance
	"The receiver creates a new concrete transition based on the definition <aBpmTransitionDefinition> and this transition has been started from the artifact <aBpmArtifactInstance>"
	| newTransition endArtifact |

	newTransition := BpmTransitionInstance definition: aBpmTransitionDefinition.
	"create the end artifact of the new transition"
	endArtifact := aBpmTransitionDefinition endArtifact createInstanceOn: self.

	newTransition startArtifact: aBpmArtifactInstance; "also add <newTransition> as an outgoing transition to <aBpmArtifactInstance>"
		endArtifact: endArtifact. "also add <newTransition> as an incomming transition to <endArtifact>"

	transitions add: newTransition.

	endArtifact performInitializationOn: self. "the artifact is initialized"

	^newTransition