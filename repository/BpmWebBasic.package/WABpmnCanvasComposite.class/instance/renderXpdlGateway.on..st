render xpdl
renderXpdlGateway: aXPDLGatewayNode on: html
	| aPoint textPoint rotation associations |

	aPoint := aXPDLGatewayNode getXcoordinate @ aXPDLGatewayNode getYcoordinate.
	rotation := 'rotate(-45 ', aXPDLGatewayNode center x printString, ' ', aXPDLGatewayNode center y printString, ')'. 
	associations := OrderedCollection  new.
	associations 
		add: ('id' -> UUID new asString);
		add: ('x' -> (aPoint x + 5));
		add: ('y' -> (aPoint y + 5));
		add: ('height' -> self defaultGatewayHeight);
		add: ('width' -> self defaultGatewayWidth);
		add: ('stroke-width' -> self defaultGatewayStrokeWidth);
		add: ('stroke' -> self defaultGatewayStroke);
		add: ('opacity' -> '1');
		add: ('fill' -> self defaultGatewayFillColor);
		add: ('transform' -> rotation).

	self renderSvgElementOn: html tag: html svgRectangle attributes: associations with: [aXPDLGatewayNode getTooltipOrNil ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].
	textPoint := aPoint x @ (aPoint y - 10).
	self renderGatewayInnerIconFor: aXPDLGatewayNode on: html.
	self renderTextOn: html text: aXPDLGatewayNode getName at: textPoint textSizePx: self defaultGatewayNameSize.