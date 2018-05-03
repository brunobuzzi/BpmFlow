*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	self hasPerformers
	ifTrue: [^aJasvgiBpmCanvas drawMultiRoleActivityNamed: self getName 
							roles: (performers collect: [:each | '[',each getName,']']) 
							at: self getXcoordinate @ self getYcoordinate 
							extent: self getWidth @ self getHeight].

	self isMultiInstance 
	ifFalse: [^aJasvgiBpmCanvas 
						drawActivityNamed: self getName 
						at: self getXcoordinate @ self getYcoordinate 
						extent: self getWidth @ self getHeight].

	^aJasvgiBpmCanvas 
			drawMultiInstaceActivityNamed: self getName 
			at: self getXcoordinate @ self getYcoordinate 
			extent: self getWidth @ self getHeight