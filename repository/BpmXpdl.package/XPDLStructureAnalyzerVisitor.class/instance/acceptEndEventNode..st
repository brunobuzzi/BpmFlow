xpdl events
acceptEndEventNode: aXPDLEndNode
	"The receiver check if the end node exist"

	(visitedEvents identityIncludes: aXPDLEndNode) 
	ifTrue: [^self]
	ifFalse: [visitedEvents add: aXPDLEndNode].
	
	hasEndNode := true.

	self acceptXpdlNode: aXPDLEndNode.