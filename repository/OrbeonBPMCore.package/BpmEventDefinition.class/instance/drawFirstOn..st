svg
drawFirstOn: aJasvgiBpmCanvas

	self isEndEvent ifTrue: [^self drawOn: aJasvgiBpmCanvas at: 10@25].

	^self drawOn: aJasvgiBpmCanvas at: 20@25