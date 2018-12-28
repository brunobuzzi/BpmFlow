other
asSvgGeometryFor: aSvgCanvas
	| rotation |

	rotation := 'rotate(-45 ', self center x printString, ' ', self center y printString, ')'.

	^OrderedCollection new
		add: ('id' -> UUID new asString);
		add: ('x' -> (self getXcoordinate + 5));
		add: ('y' -> (self getYcoordinate + 5));
		add: ('height' -> aSvgCanvas defaultGatewayHeight);
		add: ('width' -> aSvgCanvas defaultGatewayWidth);
		add: ('stroke-width' -> aSvgCanvas defaultGatewayStrokeWidth);
		add: ('stroke' -> aSvgCanvas defaultGatewayStroke);
		add: ('opacity' -> '1');
		add: ('fill' -> aSvgCanvas defaultGatewayFillColor);
		add: ('transform' -> rotation);
		yourself