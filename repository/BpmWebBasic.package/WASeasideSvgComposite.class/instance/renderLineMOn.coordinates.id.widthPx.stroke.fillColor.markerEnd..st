line m
renderLineMOn: html coordinates: coordinates id: id widthPx: widthPx stroke: stroke fillColor: fillColor markerEnd: markerId

	^html svgPath
			attributeAt: 'id' put: id;
			attributeAt: 'd' put: (self getConnectionPointsStringFrom: coordinates);
			attributeAt: 'stroke' put: stroke;
			attributeAt: 'stroke-width' put: widthPx;
			attributeAt: 'fill' put: fillColor;
			attributeAt: 'marker-end' put: 'url(#', markerId, ')';
			yourself