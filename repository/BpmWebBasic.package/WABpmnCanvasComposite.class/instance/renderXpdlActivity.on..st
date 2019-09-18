render xpdl
renderXpdlActivity: aXPDLActivityNode on: html
	| textPoint |

	textPoint := (aXPDLActivityNode getXcoordinate + 5) @ (aXPDLActivityNode getYcoordinate + 32).

	self renderSvgElementOn: html 
			tag: html svgRectangle 
			attributes: (aXPDLActivityNode asSvgGeometryFor: self) 
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