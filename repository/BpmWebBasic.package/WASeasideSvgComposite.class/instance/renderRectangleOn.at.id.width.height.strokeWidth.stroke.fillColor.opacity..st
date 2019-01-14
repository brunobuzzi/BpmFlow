rectangle
renderRectangleOn: html at: aPoint id: id width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor opacity: opacity
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"
	| associations |

	associations := OrderedCollection new.
	associations add: ('id' -> id);
		add: ('x' -> aPoint x);
		add: ('y' -> aPoint y);
		add: ('height' -> height);
		add: ('width' -> width);
		add: ('fill' -> fillColor);
		add: ('stroke' -> stroke);
		add: ('stroke-width' -> widthPx);
		add: ('opacity' -> opacity).

	^self renderSvgElementOn: html tag: html svgRectangle attributes: associations with: []