bpm figure
drawGatewayAt: aPoint id: id color: color

	^self drawGatewayAt: aPoint 
			id: id 
			height: self defaultGatewayHeight 
			width: self defaultGatewayWidth
			fillColor: color
			stroke: self defaultGatewayStroke