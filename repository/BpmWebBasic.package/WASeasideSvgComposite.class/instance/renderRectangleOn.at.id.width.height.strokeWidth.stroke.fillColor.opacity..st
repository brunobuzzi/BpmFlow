other
renderRectangleOn: html at: aPoint id: id width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor opacity: opacity
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	html svgRectangle
		attributeAt: 'id' put: id;
		attributeAt: 'x' put: aPoint x;
		attributeAt: 'y' put: aPoint y;
		attributeAt: 'fill' put: fillColor;
		attributeAt: 'height' put: height;
		attributeAt: 'width' put: width;
		attributeAt: 'stroke' put: stroke;
		attributeAt: 'stroke-width' put: widthPx;
		attributeAt: 'opacity' put: opacity