*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	self isTimerNode
	ifTrue: [aJasvgiBpmCanvas drawTimeEvent: self at: (self getXcoordinate @ self getYcoordinate)]
	ifFalse: [aJasvgiBpmCanvas drawEventNamed: self getName at: self getXcoordinate @ self getYcoordinate]