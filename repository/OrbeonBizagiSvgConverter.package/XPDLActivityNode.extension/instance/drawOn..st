*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	^aJasvgiBpmCanvas
		drawActivityNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate