boxes
getAllBoxes
	"Answer all child boxes of the receiver (including it self)"

	^self getAllBoxesOn: OrderedCollection new