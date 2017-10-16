*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	self isTimerNode
	ifTrue: [aJasvgiBpmCanvas drawTimeEventNamed: self getName at: self getXcoordinate @ self getYcoordinate]
	ifFalse: [aJasvgiBpmCanvas drawEventNamed: self getName at: self getXcoordinate @ self getYcoordinate]