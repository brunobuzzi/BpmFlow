svg
drawLastOn: aJasvgiBpmCanvas

	self isEndEvent ifTrue: [^self drawOn: aJasvgiBpmCanvas at: 250@25].

	^self drawOn: aJasvgiBpmCanvas at: 250@25