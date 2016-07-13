other
getProcessTree: anOrderedCollection
	"Answer a collection with all process in the tree process structure (parentProcesses and subprocesses)"

	(anOrderedCollection includes: self) ifTrue: [^anOrderedCollection].

	anOrderedCollection add: self.

	subprocesses do: [:each | each getProcessTree: anOrderedCollection].

	parentProcess getProcessTree: anOrderedCollection.

	^anOrderedCollection