svg
drawOn: aJasvgiBpmCanvas at: aPoint

	self isEndEvent ifTrue: [^aJasvgiBpmCanvas drawEndNamed: name at: aPoint].

	^aJasvgiBpmCanvas drawStartNamed: name at: aPoint