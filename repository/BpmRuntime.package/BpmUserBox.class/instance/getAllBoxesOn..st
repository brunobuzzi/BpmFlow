boxes
getAllBoxesOn: anOrderedCollection
	"Answer all child boxes of the receiver (including it self)"

	(anOrderedCollection includes: self) ifTrue: [^anOrderedCollection].

	anOrderedCollection add: self.

	boxChildren do: [:each | each getAllBoxesOn: anOrderedCollection].

	^anOrderedCollection