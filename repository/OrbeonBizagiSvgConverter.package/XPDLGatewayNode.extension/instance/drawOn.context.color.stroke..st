*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas context: aBpmProcessInstance color: color stroke: stroke 

	^aJasvgiBpmCanvas
		drawGatewayAt: self getXcoordinate @ self getYcoordinate 
		id: self getName
		color: color