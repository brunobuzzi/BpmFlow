gateways
drawGatewayAt: aPoint id: id

	^self drawGatewayAt: aPoint 
			id: id 
			height: self defaultGatewayHeight 
			width: self defaultGatewayWidth
			fillColor: self defaultGatewayFillColor
			stroke: self defaultGatewayStroke