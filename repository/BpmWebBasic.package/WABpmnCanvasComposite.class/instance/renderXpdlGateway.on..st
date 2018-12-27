render xpdl
renderXpdlGateway: aXPDLGatewayNode on: html
	| rectangle aPoint textPoint rotation |

	aPoint := aXPDLGatewayNode getXcoordinate @ aXPDLGatewayNode getYcoordinate.

	"rotation := 'rotate(-45 ', figure center x printString, ' ', figure center y printString, ')'. "
	rotation := 'rotate(-45 ', aXPDLGatewayNode center x printString, ' ', aXPDLGatewayNode center y printString, ')'. 

	rectangle := self renderRectangleOn: html 
								at: aPoint + 5
								width: self defaultGatewayWidth 
								height: self defaultGatewayHeight 
								strokeWidth: self defaultGatewayStrokeWidth 
								stroke: self defaultGatewayStroke 
								fillColor: self defaultGatewayFillColor
								transform: rotation.

	textPoint := aPoint x @ (aPoint y - 10).

	self renderGatewayInnerIconFor: aXPDLGatewayNode on: html.

	self renderTextOn: html text: aXPDLGatewayNode getName at: textPoint textSizePx: self defaultGatewayNameSize