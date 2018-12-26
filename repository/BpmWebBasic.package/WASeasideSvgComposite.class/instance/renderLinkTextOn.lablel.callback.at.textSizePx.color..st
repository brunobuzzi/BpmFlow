other
renderLinkTextOn: html lablel: aString callback: aBlock at: aPoint textSizePx: textSizePx color: color
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "

	^self renderLinkTextOn: html label: aString callback: aBlock at: aPoint id: UUID new asString textSizePx: textSizePx color: color