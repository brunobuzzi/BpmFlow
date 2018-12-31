render basic
renderSubProcessInnerIconOn: html at: aPoint

	self renderLineOn: html from: ((aPoint x - 6) @ aPoint y) to: ((aPoint x + 6) @ aPoint y) widthPx: '3px' stroke: 'black' fillColor: 'black'.
	self renderLineOn: html from: (aPoint x @ (aPoint y - 6)) to: (aPoint x @ (aPoint y + 6)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
	self renderRoundRectangleOn: html at: aPoint - 8 width: 16 height: 16 rx: 5 ry: 5 strokeWidth: self defaultActivityStrokeWidth stroke: 'black' fillColor: 'none'.