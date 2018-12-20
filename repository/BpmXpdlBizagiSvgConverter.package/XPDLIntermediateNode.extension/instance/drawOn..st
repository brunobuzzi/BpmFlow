*bpmxpdlbizagisvgconverter
drawOn: aJasvgiBpmCanvas

	self isTimerNode ifTrue: [^aJasvgiBpmCanvas drawTimeEvent: self at: (self getXcoordinate @ self getYcoordinate) tooltip: self getActivationBlockValue].

	self isMessageNode ifTrue: [^aJasvgiBpmCanvas drawMessageEvent: self at: (self getXcoordinate @ self getYcoordinate)].
	
	^aJasvgiBpmCanvas drawEventNamed: self getName at: self getXcoordinate @ self getYcoordinate