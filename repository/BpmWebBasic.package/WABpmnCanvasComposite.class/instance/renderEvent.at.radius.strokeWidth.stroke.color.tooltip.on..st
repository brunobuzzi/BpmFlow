render basic
renderEvent: aXPDLEventNode at: aPoint radius: radius strokeWidth: strokeWidth stroke: stroke color: color tooltip: tooltip on: html
	| textPoint associations |
	"aPoint + 15 >> to fix a mismatch with Bizagi coordinates"

	associations := OrderedCollection new.
	associations 
		add: ('id' -> UUID new asString);
		add: ('cx' -> aPoint x);
		add: ('cy' -> aPoint y);
		add: ('r' -> radius);
		add: ('stroke-width' -> strokeWidth);
		add: ('stroke' -> stroke);
		add: ('fill' -> color).

	self renderSvgElementOn: html tag: html svgCircle attributes: associations with: [].

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	self renderTextOn: html text: aXPDLEventNode getName at: textPoint textSizePx: self defaultEventNameSize.