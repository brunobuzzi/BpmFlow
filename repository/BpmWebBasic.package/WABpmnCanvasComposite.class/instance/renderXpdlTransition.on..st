render xpdl
renderXpdlTransition: aXPDLTransitionNode on: html

	self renderSvgElementOn: html 
			tag: html svgPath 
			attributes: (aXPDLTransitionNode asSvgGeometryFor: self) 
			with: [aXPDLTransitionNode getTooltipOrNil ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].

	aXPDLTransitionNode isDefaultFlow
	ifTrue: [self renderCircleOn: html at: aXPDLTransitionNode getFirstCoodinate r: 5 strokeWidth: '2px' stroke: 'white' fillColor: 'white'].