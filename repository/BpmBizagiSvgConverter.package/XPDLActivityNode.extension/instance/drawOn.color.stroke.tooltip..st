*bpmBizagiSvgConverter
drawOn: aJasvgiBpmCanvas color: color stroke: stroke tooltip: tooltip

	^aJasvgiBpmCanvas
		drawActivityNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate
		extent: self getWidth @ self getHeight
		color: color
		stroke: stroke
		tooltip: tooltip