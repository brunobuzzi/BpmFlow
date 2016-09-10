*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	^aJasvgiBpmCanvas
		drawActivityNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate
		color: self getColor
		stroke: self getStrokeColor