other
getAllLanes
	"Answer a collection with all XPDLLaneNode of the receiver"
	| allLanes |

	allLanes := OrderedCollection new.

	self getAllPools do: [:each | allLanes addAll: each lanes].

	^allLanes