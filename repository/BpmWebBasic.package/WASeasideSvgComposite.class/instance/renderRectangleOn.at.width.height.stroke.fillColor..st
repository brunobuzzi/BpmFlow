rectangle
renderRectangleOn: html at: aPoint width: width height: height stroke: color fillColor: dayColor
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self renderRectangleOn: html at: aPoint id: UUID new asString width: width height: height strokeWidth: '1px' stroke: color fillColor: dayColor opacity: '1'