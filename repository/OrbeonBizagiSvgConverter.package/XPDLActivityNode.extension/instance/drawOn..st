*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	^aJasvgiBpmCanvas
		drawActivityNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate
		extent: self getWidth @ self getHeight