*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	^self isTimerNode
	ifTrue: [aJasvgiBpmCanvas drawTimeEvent: self at: (self getXcoordinate @ self getYcoordinate)]
	ifFalse: [aJasvgiBpmCanvas drawStartNamed: self getName at: self getXcoordinate @ self getYcoordinate]