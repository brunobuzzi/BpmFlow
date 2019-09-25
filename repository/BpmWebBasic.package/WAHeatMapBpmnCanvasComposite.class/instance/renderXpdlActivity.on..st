render xpdl
renderXpdlActivity: aXPDLActivityNode on: html
	| textPoint attributes fillAssoc |

	textPoint := (aXPDLActivityNode getXcoordinate + 5) @ (aXPDLActivityNode getYcoordinate + 32).

	attributes := aXPDLActivityNode asSvgGeometryFor: self.
	fillAssoc := attributes detect: [:each | each key = 'fill'] ifNone: [].
	fillAssoc value: (gradients second at: aXPDLActivityNode getName ifAbsent: [fillAssoc value]). "rewrite 'fill' attribute"

	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: attributes
			with: [(self getTooltipFor: aXPDLActivityNode) ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].

	aXPDLActivityNode isOrbeonTaskNode
	ifTrue:[ html anchor 
						url: (self getUrlForOrbeon: aXPDLActivityNode getName);
						target: (model isProcessInstance ifFalse: ['_blank'] ifTrue: ['_self']);
						with: [self renderTextOn: html text: aXPDLActivityNode getName at: textPoint textSizePx: self defaultActivityNameSize].
	]
	ifFalse: [self renderTextOn: html text: aXPDLActivityNode getName at: textPoint textSizePx: self defaultActivityNameSize].

	aXPDLActivityNode isStandardLoop 
	ifTrue: [self renderStandardLoopIconOn: html 
						at: ((aXPDLActivityNode getXcoordinate + (aXPDLActivityNode  getWidth // 2)) @ (aXPDLActivityNode getYcoordinate + aXPDLActivityNode getHeight - 15))].

	aXPDLActivityNode isMultiInstanceLoop
	ifTrue: [self renderMultiInstanceLoopIconOn: html 
						at: ((aXPDLActivityNode getXcoordinate + (aXPDLActivityNode  getWidth // 2)) @ (aXPDLActivityNode getYcoordinate + aXPDLActivityNode getHeight - 15))].

	self renderCircleOn: html at: (aXPDLActivityNode getXcoordinate @ aXPDLActivityNode getYcoordinate) r: 12 strokeWidth: 1 stroke: 'black' fillColor: 'white'.
	self renderTextOn: html text: (gradients first at: aXPDLActivityNode getName ifAbsent: [0]) at: ((aXPDLActivityNode getXcoordinate - 6) @ (aXPDLActivityNode getYcoordinate + 4)).