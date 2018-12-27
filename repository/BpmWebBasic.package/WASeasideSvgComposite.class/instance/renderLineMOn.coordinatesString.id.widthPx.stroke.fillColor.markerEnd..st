line m
renderLineMOn: html coordinatesString: coordinatesString id: id widthPx: widthPx stroke: stroke fillColor: fillColor markerEnd: markerId

	^html svgPath
			attributeAt: 'id' put: id;
			attributeAt: 'd' put: coordinatesString;
			attributeAt: 'stroke' put: stroke;
			attributeAt: 'stroke-width' put: widthPx;
			attributeAt: 'fill' put: fillColor;
			attributeAt: 'marker-end' put: 'url(#', markerId, ')';
			yourself