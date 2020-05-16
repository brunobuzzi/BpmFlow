visiting
do: operation
	"Evaluate monadic value argument, operation, for each of the elements of the 
	receiver. Answers the receiver. The elements are enumerated using a 'pre-order'
	or 'depth-first' traversal where the parent is visited before the children."

	^self preOrderDo: operation