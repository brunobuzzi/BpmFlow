visiting
endOrderDo: aBlock
	"Apply <aBlock> to each element of the receiver enumerating elements in endOrder fashion"

	self roots do: [:each | self endOrderDo: aBlock on: each]