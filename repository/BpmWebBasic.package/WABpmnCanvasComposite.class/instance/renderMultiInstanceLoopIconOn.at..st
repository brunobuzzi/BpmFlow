render basic
renderMultiInstanceLoopIconOn: html at: aPoint

	self renderLineOn: html from: ((aPoint x - 4) @ (aPoint y - 5)) to: ((aPoint x - 4) @ (aPoint y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.
	self renderLineOn: html from: ((aPoint x) @ (aPoint y - 5)) to: ((aPoint x) @ (aPoint y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.
	self renderLineOn: html from: ((aPoint x + 4) @ (aPoint y - 5)) to: ((aPoint x + 4) @ (aPoint y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.