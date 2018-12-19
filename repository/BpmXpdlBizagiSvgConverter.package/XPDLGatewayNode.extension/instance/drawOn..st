*bpmxpdlbizagisvgconverter
drawOn: aJasvgiBpmCanvas

	^aJasvgiBpmCanvas 
			drawGatewayType: type 
			at: self getXcoordinate @ self getYcoordinate 
			id: self getName 
			color: 'lightgray' 
			tooltip: self getTooltipOrNil