visiting
endOrderDo: aBlock on: aTreeNode
	"The receiver enumarate children of <aTreeNode> first then apply <aBlock> to <aTreeNode>.
	Children first then the parent"

	aTreeNode children do: [:each | self endOrderDo: aBlock on: each].

	aBlock value: aTreeNode