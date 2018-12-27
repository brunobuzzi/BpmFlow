render xpdl
renderXpdlSubprocess: aXPDLSubProcessNode on: html
	| process center lineH lineV smallRect aPoint |

	aPoint := aXPDLSubProcessNode getXcoordinate @ aXPDLSubProcessNode getYcoordinate.
	center := (aPoint x + (aXPDLSubProcessNode extent x // 2)) @ (aPoint y + 15 + (aXPDLSubProcessNode extent y // 2)).

	process := self renderXpdlActivity: aXPDLSubProcessNode on: html.

	lineH := self renderLineOn: html from: ((center x - 6) @ center y) to: ((center x + 6) @ center y) widthPx: '3px' stroke: 'black' fillColor: 'black'.
	lineV := self renderLineOn: html from: (center x @ (center y - 6)) to: (center x @ (center y + 6)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
	smallRect := self renderRoundRectangleOn: html at: center - 8 width: 16 height: 16 rx: 5 ry: 5 strokeWidth: self defaultActivityStrokeWidth stroke: 'black' fillColor: 'none'.

	^process