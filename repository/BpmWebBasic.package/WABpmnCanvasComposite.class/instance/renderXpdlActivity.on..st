render xpdl
renderXpdlActivity: aXPDLActivityNode on: html
	| textPoint |

	textPoint := (aXPDLActivityNode getXcoordinate + 5) @ (aXPDLActivityNode getYcoordinate + 32).

	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: (aXPDLActivityNode asSvgGeometryFor: self) 
			with: [(aXPDLActivityNode getTooltipOrNilFor: model application) ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].

	html anchor 
		url: (self getUrlForOrbeon: aXPDLActivityNode getName);
		target: (model isProcessInstance ifFalse: ['_blank'] ifTrue: ['_self']);
		with: [self renderTextOn: html text: aXPDLActivityNode getName at: textPoint textSizePx: self defaultActivityNameSize].