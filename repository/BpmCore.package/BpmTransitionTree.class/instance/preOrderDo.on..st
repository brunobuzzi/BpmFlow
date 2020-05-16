visiting
preOrderDo: aBlock on: aTreeNode
	"The receiver apply <aBlock> to <aTreeNode> and the enumarate children of <aTreeNode>.
	Parent first the the children"

	aBlock value: aTreeNode.

	aTreeNode children do: [:each | self preOrderDo: aBlock on: each]