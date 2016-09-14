*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	self isMultiInstance 
	ifFalse: [^aJasvgiBpmCanvas 
						drawActivityNamed: self getName 
						at: self getXcoordinate @ self getYcoordinate 
						extent: self getWidth @ self getHeight].

	^aJasvgiBpmCanvas 
			drawMultiInstaceActivityNamed: self getName 
			at: self getXcoordinate @ self getYcoordinate 
			extent: self getWidth @ self getHeight