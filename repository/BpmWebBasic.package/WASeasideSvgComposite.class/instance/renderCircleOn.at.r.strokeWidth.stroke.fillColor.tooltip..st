circle
renderCircleOn: html at: aPoint r: radius strokeWidth: strokeWidth stroke: stroke fillColor: fillColor tooltip: tooltip
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^html svgCircle
		attributeAt: 'id' put: UUID new asString;
		attributeAt: 'r' put: radius;
		attributeAt: 'cx' put: aPoint x;
		attributeAt: 'cy' put: aPoint y;
		attributeAt: 'fill' put: fillColor;
		attributeAt: 'stroke' put: stroke;
		attributeAt: 'stroke-width' put: strokeWidth;
		yourself