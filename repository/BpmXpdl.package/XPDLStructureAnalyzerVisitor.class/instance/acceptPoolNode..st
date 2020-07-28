xpdl top elements
acceptPoolNode: aXPDLPoolNode
	"The receiver check:
	* If the Pool has lanes.
	* Lanes with the same name"
	| lanesNames |

	(aXPDLPoolNode getName isNil or: [aXPDLPoolNode getName isEmpty]) ifTrue: [self addPoolWithoutNameItem: aXPDLPoolNode].

	aXPDLPoolNode lanesIsEmpty ifTrue: [self addPoolWithoutLanesItem: aXPDLPoolNode].

	lanesNames := aXPDLPoolNode lanesCollect: [:each | each getName].

	(lanesNames size = lanesNames asSet size) ifFalse: [self addPoolWithLanesWithSameNameItem: aXPDLPoolNode].

	aXPDLPoolNode lanesDo: [:xpdlLaneNode | xpdlLaneNode acceptVisitor: self].

	aXPDLPoolNode workflow acceptVisitor: self