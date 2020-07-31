Accessing
responsiblesDo: aBlock

	self hasPerformers
	ifTrue: [performers do: aBlock]
	ifFalse: [roles do: aBlock]