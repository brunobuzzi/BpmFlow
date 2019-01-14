marker
renderMarkerOn: html at: aPoint id: id width: width height: height
	| associations |

	associations := OrderedCollection new.
	associations add: ('id' -> id);
		add: ('markerWidth' -> width);
		add: ('markerHeight' -> height);
		add: ('refX' -> aPoint x);
		add: ('refY' -> aPoint y);
		add: ('orient' -> 'auto').

	^self renderSvgElementOn: html 
		tag: html svgMarker 
		attributes: associations 
		with: [self renderLineMOn: html coordinatesString: 'M1,1 L1,9 L9,5 L1,1' id: UUID new asString widthPx: '1px' stroke: 'black' fillColor: 'black']