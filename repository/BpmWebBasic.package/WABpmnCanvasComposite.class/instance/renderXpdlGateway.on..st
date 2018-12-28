render xpdl
renderXpdlGateway: aXPDLGatewayNode on: html
	| aPoint textPoint rotation |

	aPoint := aXPDLGatewayNode getXcoordinate @ aXPDLGatewayNode getYcoordinate.
	rotation := 'rotate(-45 ', aXPDLGatewayNode center x printString, ' ', aXPDLGatewayNode center y printString, ')'. 

	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: (aXPDLGatewayNode asSvgGeometryValuesFor: self) 
			with: [aXPDLGatewayNode getTooltipOrNil ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].

	textPoint := aPoint x @ (aPoint y - 10).
	"render the inner icon of the gateway associated with the gateway type "
	self renderGatewayInnerIconFor: aXPDLGatewayNode on: html.
	self renderTextOn: html text: aXPDLGatewayNode getName at: textPoint textSizePx: self defaultGatewayNameSize.