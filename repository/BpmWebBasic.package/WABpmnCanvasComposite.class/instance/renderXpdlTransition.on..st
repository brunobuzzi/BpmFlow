render xpdl
renderXpdlTransition: aXPDLTransitionNode on: html

	^self renderLineMOn: html coordinates: aXPDLTransitionNode coordinates id: UUID new asString widthPx: '1px' stroke: 'gray' fillColor: 'none' markerEnd: 'arrow'