visiting
preOrderDo: aBlock
	"Apply <aBlock> to each element of the receiver enumerating elements in preOrder fashion"

	self roots do: [:each | self preOrderDo: aBlock on: each]