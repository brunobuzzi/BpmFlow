*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	^self isTimerNode
	ifTrue: [aJasvgiBpmCanvas drawTimeEvent: self at: (self getXcoordinate @ self getYcoordinate)]
	ifFalse: [self isAnonymousStart
				ifFalse: [aJasvgiBpmCanvas drawStartNamed: self getName at: self getXcoordinate @ self getYcoordinate] 
				ifTrue: [aJasvgiBpmCanvas drawAnonymousStartNamed: self getName at: self getXcoordinate @ self getYcoordinate]
	]