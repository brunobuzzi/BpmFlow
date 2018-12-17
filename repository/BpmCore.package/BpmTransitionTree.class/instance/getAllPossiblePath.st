visiting
getAllPossiblePath
	| paths |

	paths := OrderedCollection new.

	self getLeafNodes do: [:leafNode | 
		paths add: (OrderedCollection withAll: leafNode getParentNodes reverse).
	].

	^paths