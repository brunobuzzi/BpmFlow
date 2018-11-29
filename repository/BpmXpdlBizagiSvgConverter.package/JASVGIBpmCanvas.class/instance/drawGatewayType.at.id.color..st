gateways
drawGatewayType: type at: aPoint id: id color: color

	^self drawGatewayType: type 
			at: aPoint 
			id: id 
			height: self defaultGatewayHeight 
			width: self defaultGatewayWidth
			fillColor: color 
			stroke: self defaultGatewayStroke