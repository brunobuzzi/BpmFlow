text
renderTextOn: html text: aString at: aPoint id: id textSizePx: textSizePx color: color transform: transformString
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "

	^html svgText
		attributeAt: 'id' put: id;
		attributeAt: 'x' put: aPoint x;
		attributeAt: 'y' put: aPoint y;
		attributeAt: 'font-size' put: textSizePx;
		attributeAt: 'font-family' put: 'Tahoma';
		attributeAt: 'fill' put: color;
		attributeAt: 'transform' put: transformString;
		with: aString;
		yourself