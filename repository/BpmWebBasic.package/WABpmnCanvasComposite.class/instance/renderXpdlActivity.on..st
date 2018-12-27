render xpdl
renderXpdlActivity: aXPDLActivityNode on: html
	| rect textPoint aPoint extent |

	aPoint := aXPDLActivityNode getXcoordinate @ aXPDLActivityNode getYcoordinate.
	extent := aXPDLActivityNode getWidth @ aXPDLActivityNode getHeight.

	rect := self renderRoundRectangleOn: html 
						at: aPoint 
						id: UUID new asString 
						width: extent x 
						height: extent y 
						rx: 5 
						ry: 5 
						strokeWidth: self defaultActivityStrokeWidth 
						stroke: self defaultActivityStroke 
						fillColor: self defaultActivityColor.

	textPoint := (aPoint x + 5) @ (aPoint y + 32).

	self renderTextOn: html text: aXPDLActivityNode getName at: textPoint textSizePx: self defaultActivityNameSize.

	^rect