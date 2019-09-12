*bpmBizagiSvgConverter
drawOn: aJasvgiBpmCanvas color: color stroke: stroke for: anApplication

	^aJasvgiBpmCanvas
		drawActivityNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate
		extent: self getWidth @ self getHeight
		color: color
		stroke: stroke
		tooltip: (self getTooltipOrNilFor: anApplication)