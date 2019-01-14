text
renderTextOn: html text: aString at: aPoint id: id fontFamily: fontFamily textSizePx: textSizePx color: color transform: transformString
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "
	| associations |

	associations := OrderedCollection new.
	associations add: ('id' -> id);
		add: ('x' -> aPoint x);
		add: ('y' -> aPoint y);
		add: ('fill' -> color);
		add: ('font-size' -> textSizePx);
		add: ('font-family' -> fontFamily);
		add: ('transform' -> transformString).

	^self renderSvgElementOn: html tag: html svgText attributes: associations with: aString