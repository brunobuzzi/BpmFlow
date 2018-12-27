rectangle
renderRectangleOn: html at: aPoint width: width height: height strokeWidth: strokeWidth stroke: stroke fillColor: fillColor transform: transformString
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self renderRectangleOn: html at: aPoint id: UUID new asString width: width height: height strokeWidth: strokeWidth stroke: stroke fillColor: fillColor opacity: '1' transform: transformString