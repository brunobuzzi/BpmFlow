render basic
renderEvent: aXPDLEventNode at: aPoint radius: radius strokeWidth: strokeWidth stroke: stroke color: color tooltip: tooltip on: html
	| event textPoint |
	"aPoint + 15 >> to fix a mismatch with Bizagi coordinates"

	event := self renderCircleOn: html at: aPoint r: radius strokeWidth: strokeWidth stroke: stroke fillColor: color tooltip: tooltip.
	"event id: aString."

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	self renderTextOn: html text: aXPDLEventNode getName at: textPoint textSizePx: self defaultEventNameSize.

	^event