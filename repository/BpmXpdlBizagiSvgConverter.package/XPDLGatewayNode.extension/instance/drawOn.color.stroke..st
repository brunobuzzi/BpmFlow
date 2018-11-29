*bpmxpdlbizagisvgconverter
drawOn: aJasvgiBpmCanvas color: color stroke: stroke 

	^aJasvgiBpmCanvas
		drawGatewayType: type
		at: self getXcoordinate @ self getYcoordinate 
		id: self getName
		color: color