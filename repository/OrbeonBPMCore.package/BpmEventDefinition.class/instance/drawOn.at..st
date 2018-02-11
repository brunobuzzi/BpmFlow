svg
drawOn: aJasvgiBpmCanvas at: aPoint

	self isEndEvent ifTrue: [^aJasvgiBpmCanvas drawEndNamed: name at: aPoint].

	^self isTimerEvent
	ifTrue: [aJasvgiBpmCanvas drawTimeEventNamed: name at: aPoint] 
	ifFalse: [aJasvgiBpmCanvas drawStartNamed: name at: aPoint]