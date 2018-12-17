visiting
endOrderDo: aBlock on: aTreeNode

	aTreeNode children do: [:each | self preOrderDo: aBlock on: each].

	aBlock value: aTreeNode