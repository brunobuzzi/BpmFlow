render xpdl
renderXpdlTransition: aXPDLTransitionNode on: html

	self renderSvgElementOn: html 
			tag: html svgPath 
			attributes: (aXPDLTransitionNode asSvgGeometryFor: self) 
			with: [aXPDLTransitionNode getTooltipOrNil ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].