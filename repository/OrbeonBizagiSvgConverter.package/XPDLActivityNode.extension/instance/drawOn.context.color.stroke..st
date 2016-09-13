*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas context: aBpmProcessInstance color: color stroke: stroke 

	^aJasvgiBpmCanvas
		drawActivityNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate
		extent: self getWidth @ self getHeight
		color: color
		stroke: stroke