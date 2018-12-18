visiting
getAllPossiblePath
	"The receiver answer <aCollection> wiht all possible path of the visited bpm process. Each path is a collection of nodes (transitions).
	Basically for each leaf node goes up to the roots and store the complete path."
	| paths |

	paths := OrderedCollection new.

	self getLeafNodes do: [:leafNode | 
		paths add: (OrderedCollection withAll: leafNode getParentNodes reverse).
	].

	^paths