xpdl top elements
acceptPoolNode: aXPDLPoolNode
	"The receiver check:
	* If the Pool has lanes.
	* Lanes with the same name"
	| lanesNames |

	(aXPDLPoolNode getName isNil or: [aXPDLPoolNode getName isEmpty]) ifTrue: [self addPoolWithoutNameItem].

	aXPDLPoolNode lanes isEmpty ifTrue: [self addPoolWithoutLanesItem].

	lanesNames := aXPDLPoolNode lanes keys.

	(lanesNames size = lanesNames asSet size) ifFalse: [self addPoolWithLanesWithSameName].

	aXPDLPoolNode lanes do: [:xpdlLaneNode | xpdlLaneNode acceptVisitor: self].

	aXPDLPoolNode workflow acceptVisitor: self