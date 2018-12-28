render xpdl
renderXpdlActivity: aXPDLActivityNode on: html
	| textPoint |

	textPoint := (aXPDLActivityNode getXcoordinate + 5) @ (aXPDLActivityNode getYcoordinate + 32).

	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: (aXPDLActivityNode asSvgGeometryValuesFor: self) 
			with: [(aXPDLActivityNode getTooltipOrNilFor: model application) ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].

	html anchor 
		url: (self getUrlForOrbeonFormDefinitionNamed: aXPDLActivityNode getName);
		target: '_blank';
		with: [self renderTextOn: html text: aXPDLActivityNode getName at: textPoint textSizePx: self defaultActivityNameSize].