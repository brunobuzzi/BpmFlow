xpdl events
acceptEndEventNode: aXPDLEndNode
	"The receiver check if the end node exist"

	hasEndNode := true.

	self acceptXpdlNode: aXPDLEndNode.