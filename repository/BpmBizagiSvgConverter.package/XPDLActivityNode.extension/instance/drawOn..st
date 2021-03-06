*bpmBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	(self hasPerformers and: [self isMultiInstanceLoop])
	ifTrue: [^aJasvgiBpmCanvas drawMultiInstaceMultiRoleActivityNamed: self getName 
							roles: (performers collect: [:each | '[',each getName,']']) 
							at: self getXcoordinate @ self getYcoordinate 
							extent: self getWidth @ self getHeight].

	self hasPerformers
	ifTrue: [^aJasvgiBpmCanvas drawMultiRoleActivityNamed: self getName 
							roles: (performers collect: [:each | '[',each getName,']']) 
							at: self getXcoordinate @ self getYcoordinate 
							extent: self getWidth @ self getHeight].

	self isMultiInstanceLoop
	ifFalse: [^aJasvgiBpmCanvas 
					drawActivityNamed: self getName 
					at: self getXcoordinate @ self getYcoordinate
					extent: self getWidth @ self getHeight
					color: self defaultTaskFillColor
					stroke: self defaultTaskStroke
					tooltip: self getTooltipOrNil].

	^aJasvgiBpmCanvas 
			drawMultiInstaceActivityNamed: self getName 
			at: self getXcoordinate @ self getYcoordinate 
			extent: self getWidth @ self getHeight