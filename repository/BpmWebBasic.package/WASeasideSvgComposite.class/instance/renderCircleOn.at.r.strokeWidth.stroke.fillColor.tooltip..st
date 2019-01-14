circle
renderCircleOn: html at: aPoint r: radius strokeWidth: strokeWidth stroke: stroke fillColor: fillColor tooltip: tooltip
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"
	| associations |

	associations := OrderedCollection new.
	associations add: ('id' -> UUID new asString);
		add: ('r' -> radius);
		add: ('cx' -> aPoint x);
		add: ('cy' -> aPoint y);
		add: ('fill' -> fillColor);
		add: ('stroke' -> stroke);
		add: ('stroke-width' -> strokeWidth).

	^self renderSvgElementOn: html tag: html svgCircle attributes: associations with: []