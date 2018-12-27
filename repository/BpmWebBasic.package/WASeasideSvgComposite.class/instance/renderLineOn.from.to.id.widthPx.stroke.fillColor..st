line
renderLineOn: html from: originPoint to: finalPoint id: id widthPx: widthPx stroke: stroke fillColor: fillColor 

	^html svgLine
		attributeAt: 'id' put: id;
		attributeAt: 'x1' put: originPoint x;
		attributeAt: 'y1' put: originPoint y;
		attributeAt: 'x2' put: finalPoint x;
		attributeAt: 'y2' put: finalPoint y;
		attributeAt: 'stroke-width' put: widthPx;
		attributeAt: 'stroke' put: stroke;
		attributeAt: 'fill' put: fillColor;
		yourself