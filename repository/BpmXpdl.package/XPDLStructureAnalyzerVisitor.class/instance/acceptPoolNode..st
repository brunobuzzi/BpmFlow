xpdl top elements
acceptPoolNode: aXPDLPoolNode
	"The receiver check:
	* If the Pool has lanes"

	aXPDLPoolNode lanes isEmpty ifTrue: [self addPoolWithoutLanesItem].

	aXPDLPoolNode lanes do: [:xpdlLaneNode | xpdlLaneNode acceptVisitor: self].

	aXPDLPoolNode workflow acceptVisitor: self