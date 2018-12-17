other
preOrderDo: aBlock on: aTreeNode

	aBlock value: aTreeNode.

	aTreeNode children do: [:each | self preOrderDo: aBlock on: each]