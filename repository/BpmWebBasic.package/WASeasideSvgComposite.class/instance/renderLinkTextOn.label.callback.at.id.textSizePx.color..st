other
renderLinkTextOn: html label: aString callback: aBlock at: aPoint id: id textSizePx: textSizePx color: color
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "

	html anchor 
		callback: aBlock;
		with: [
			self svgText
				attributeAt: 'id' put: id;
				attributeAt: 'x' put: aPoint x;
				attributeAt: 'y' put: aPoint y;
				attributeAt: 'font-size' put: textSizePx;
				attributeAt: 'font-family' put: 'Tahoma';
				attributeAt: 'fill' put: color;
				with: aString.
			].