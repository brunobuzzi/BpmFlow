xpdl top elements
acceptPoolNode: aXPDLPoolNode
	"The receiver check:
	* If the Pool has lanes.
	* Lanes with the same name"
	| lanesNames |

	(aXPDLPoolNode getName isNil or: [aXPDLPoolNode getName isEmpty]) ifTrue: [self addPoolWithoutNameItem: aXPDLPoolNode].

	aXPDLPoolNode lanes isEmpty ifTrue: [self addPoolWithoutLanesItem: aXPDLPoolNode].

	lanesNames := aXPDLPoolNode lanes collect: [:each | each getName].

	(lanesNames size = lanesNames asSet size) ifFalse: [self addPoolWithLanesWithSameNameItem: aXPDLPoolNode].

	aXPDLPoolNode lanes do: [:xpdlLaneNode | xpdlLaneNode acceptVisitor: self].

	aXPDLPoolNode workflow acceptVisitor: self