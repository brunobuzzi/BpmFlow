render xpdl
renderXpdlTransition: aXPDLTransitionNode on: html
	| associations |

"	^self renderLineMOn: html coordinates: aXPDLTransitionNode coordinates id: UUID new asString 
widthPx: '1px' stroke: 'gray' fillColor: 'none' markerEnd: 'arrow'."

	associations := OrderedCollection new.
	associations 
		add: ('id' -> UUID new asString);
		add: ('d' -> ((self getConnectionPointsStringFrom: aXPDLTransitionNode coordinates)));
		add: ('stroke-width' -> '1.5');
		add: ('stroke' -> self defaultTransitionStroke);
		add: ('fill' -> 'none');
		add: ('marker-end' -> ('url(#arrow)')).
	self renderSvgElementOn: html tag: html svgPath attributes: associations with: [aXPDLTransitionNode getTooltipOrNil ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].