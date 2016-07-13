connecting
setStartAndEndNodes
	"The receiver connect with The XPDL Start node and with All XPDL End node"

	startNode := activities detect: [:each | each isStartNode] ifNone: [nil]. "only one"

	endNodes := activities select: [:each | each isEndNode]. "can be more than one"