tree
parentTransition: aBpmTransitionInstance

	parentTransition := aBpmTransitionInstance.

	"if the receiver's startArtifact is an start event then <parentTransition> is nil"
	aBpmTransitionInstance ifNotNil: [parentTransition addChildTransition: self].