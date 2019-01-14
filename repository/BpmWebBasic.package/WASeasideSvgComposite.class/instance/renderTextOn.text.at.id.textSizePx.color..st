text
renderTextOn: html text: aString at: aPoint id: id textSizePx: textSizePx color: color
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "
	| associations |

	associations := OrderedCollection new.
	associations add: ('id' -> id);
		add: ('x' -> aPoint x);
		add: ('y' -> aPoint y);
		add: ('fill' -> color);
		add: ('font-size' -> textSizePx);
		add: ('font-family' -> 'Tahoma').

	^self renderSvgElementOn: html tag: html svgText attributes: associations with: aString