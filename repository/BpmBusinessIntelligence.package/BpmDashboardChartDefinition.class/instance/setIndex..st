other
setIndex: newIndex

	self chartIndex > newIndex 
	ifTrue: [1 to: (self chartIndex - newIndex) do: [:each | definition moveDown: chartDefinition]].

	self chartIndex < newIndex 
	ifTrue: [1 to: (newIndex - self chartIndex) do: [:each | definition moveUp: chartDefinition]].