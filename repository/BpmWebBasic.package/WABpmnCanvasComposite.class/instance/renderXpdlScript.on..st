render xpdl
renderXpdlScript: aXPDLScriptNode on: html
	| textPoint aPoint scriptRectOrigin |

	aPoint := aXPDLScriptNode getXcoordinate @ aXPDLScriptNode getYcoordinate.
	textPoint := (aPoint  x + 5) @ (aPoint y + 32).

	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: (aXPDLScriptNode asSvgGeometryFor: self) 
			with: [aXPDLScriptNode getTooltipOrNil ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].

	scriptRectOrigin := (aPoint x + aXPDLScriptNode getWidth - 15) @ (aPoint y + 5).
	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: (aXPDLScriptNode asSvgIconGeometryFor: self) 
			with: [].

	self renderLineOn: html from: ((scriptRectOrigin x + 2) @ (scriptRectOrigin y + 5)) to: ((scriptRectOrigin x + 8) @ (scriptRectOrigin y + 5)) fillColor: 'black'.
	self renderLineOn: html from: ((scriptRectOrigin x + 2) @ (scriptRectOrigin y + 8)) to: ((scriptRectOrigin x + 8) @ (scriptRectOrigin y + 8)) fillColor: 'black'.
	self renderLineOn: html from: ((scriptRectOrigin x + 2) @ (scriptRectOrigin y + 11)) to: ((scriptRectOrigin x + 8) @ (scriptRectOrigin y + 11)) fillColor: 'black'.

	self renderTextOn: html text: aXPDLScriptNode getName at: textPoint textSizePx: self defaultActivityNameSize.