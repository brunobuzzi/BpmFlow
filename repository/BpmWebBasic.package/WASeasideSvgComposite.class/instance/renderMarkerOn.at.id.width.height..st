marker
renderMarkerOn: html at: aPoint id: id width: width height: height

	^html svgMarker
		attributeAt: 'id' put: id;
		attributeAt: 'markerWidth' put: width;
		attributeAt: 'markerHeight' put: height;
		attributeAt: 'refX' put: aPoint x;
		attributeAt: 'refY' put: aPoint y;
		attributeAt: 'orient' put: 'auto';
		with: [self renderLineMOn: html coordinatesString: 'M1,1 L1,9 L9,5 L1,1' id: UUID new asString widthPx: '1px' stroke: 'black' fillColor: 'black'];
		yourself