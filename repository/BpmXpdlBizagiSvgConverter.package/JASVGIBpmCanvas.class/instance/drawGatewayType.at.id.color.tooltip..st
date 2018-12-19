gateways
drawGatewayType: type at: aPoint id: id color: color tooltip: tooltip

	^self drawGatewayType: type 
			at: aPoint 
			id: id 
			height: self defaultGatewayHeight 
			width: self defaultGatewayWidth
			fillColor: color 
			stroke: self defaultGatewayStroke
			tooltip: tooltip